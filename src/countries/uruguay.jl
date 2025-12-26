module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

# Handler for 1980-1983: Returns true for May 1 only if it doesn't move to Monday
# For Tue-Fri, returns false (the observed function will mark the Monday instead)
function is_may_1st_1980_1983(x::TimeType)
    is_may_1st(x) || return false

    year = Dates.year(x)
    may_first = Date(year, 5, 1)
    day_of_week = Dates.dayofweek(may_first)

    # Only mark May 1st itself if it falls on Mon/Sat/Sun (doesn't move)
    return day_of_week in [Dates.Monday, Dates.Saturday, Dates.Sunday]
end

# Observed function specifically for Uruguay 1980-1983
# Checks the ACTUAL May 1st date, not the filtered handler
function uruguay_observed_1980_1983(holiday::Holiday, x::TimeType)
    is_monday(x) || return false

    year = Dates.year(x)
    may_first = Date(year, 5, 1)
    day_of_week = Dates.dayofweek(may_first)

    # Tuesday/Wednesday -> previous Monday (this x)
    if day_of_week in [Dates.Tuesday, Dates.Wednesday]
        return Date(x) == may_first - Day(day_of_week - 1)
        # Thursday/Friday -> next Monday (this x)
    elseif day_of_week in [Dates.Thursday, Dates.Friday]
        return Date(x) == may_first + Day(8 - day_of_week)
    end

    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Uruguay})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday(
            "Presidential Inauguration Day",
            is_march_1st,
            start_year = 1985,
            end_year = 2020,
            only_years = year -> year % 5 == 0,
        ),
        Holiday("Workers' Day", is_may_1st, end_year = 1979),
        Holiday(
            "Workers' Day",
            is_may_1st_1980_1983,
            start_year = 1980,
            end_year = 1983,
            observed = uruguay_observed_1980_1983,
        ),
        Holiday("Workers' Day", is_may_1st, start_year = 1984),
        Holiday("Constitution Day", is_july_18th),
        Holiday("Independence Day", is_august_25th),
        Holiday("Beaches Day", is_december_8th, start_year = 1936, end_year = 1979),
        Holiday("Day of the Family", Christian.is_christmas_day),
    ]
end

end

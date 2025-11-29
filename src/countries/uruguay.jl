module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

# Check if Uruguay observed rule applies for a given year (for Workers' Day specifically)
function uruguay_observed_applies_workers_day(year::Int)
    return 1980 <= year <= 1983
end

# Workers' Day handler with built-in observed logic
# In years 1980-1983, moves Tue/Wed/Thu/Fri to Monday
function is_workers_day_uruguay(x::TimeType)
    year = Dates.year(x)
    may_first = Date(year, 5, 1)

    # Check if observed rule applies for this year
    if uruguay_observed_applies_workers_day(year)
        day_of_week_may1 = Dates.dayofweek(may_first)

        # If May 1 falls on Tue/Wed/Thu/Fri, the holiday is moved to Monday
        if day_of_week_may1 in [Dates.Tuesday, Dates.Wednesday, Dates.Thursday, Dates.Friday]
            # Calculate which Monday it should be
            if day_of_week_may1 == Dates.Tuesday
                # Tuesday -> previous Monday
                return Date(x) == may_first - Day(1)
            elseif day_of_week_may1 == Dates.Wednesday
                # Wednesday -> previous Monday
                return Date(x) == may_first - Day(2)
            elseif day_of_week_may1 == Dates.Thursday
                # Thursday -> next Monday
                return Date(x) == may_first + Day(4)
            elseif day_of_week_may1 == Dates.Friday
                # Friday -> next Monday
                return Date(x) == may_first + Day(3)
            end
        else
            # May 1 falls on Sat/Sun/Mon, keep on May 1
            return Date(x) == may_first
        end
    else
        # Observed rule doesn't apply, holiday is on May 1
        return Date(x) == may_first
    end
end

function is_constitution_day(x::TimeType)
    return is_july(x) && is_day(x, 18)
end

function is_independence_day(x::TimeType)
    return is_august(x) && is_day(x, 25)
end

function is_beaches_day(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function is_presidential_inauguration(x::TimeType)
    year = Dates.year(x)
    month = Dates.month(x)
    day = Dates.day(x)
    # Presidential inaugurations occur every 5 years starting 1985
    return month == 3 && day == 1 && year in [1985, 1990, 1995, 2000, 2005, 2010, 2015, 2020]
end

function Holidays.fetch_holidays(::Type{Holidays.Uruguay})
    return [
        # New Year's Day
        Holiday("New Year's Day", is_january_1st),

        # Presidential Inauguration Day (every 5 years starting 1985)
        Holiday("Presidential Inauguration Day", is_presidential_inauguration),

        # Workers' Day (with observed rule 1980-1983 only)
        Holiday("Workers' Day", is_workers_day_uruguay),

        # Constitution Day
        Holiday("Constitution Day", is_constitution_day),

        # Independence Day
        Holiday("Independence Day", is_independence_day),

        # Beaches Day (ended in 1979, was also present 1936-1979)
        Holiday("Beaches Day", is_beaches_day, end_year = 1979),

        # Day of the Family (Christmas)
        Holiday("Day of the Family", Christian.is_christmas_day),
    ]
end

end

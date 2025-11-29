module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

# Calculate the observed date for Uruguay's Tue-Fri -> Monday rule
# Tuesday/Wednesday -> previous Monday, Thursday/Friday -> next Monday
function uruguay_observed_date(base_date::Date)
    day_of_week = Dates.dayofweek(base_date)

    return if day_of_week == Dates.Tuesday
        base_date - Day(1)  # Previous Monday
    elseif day_of_week == Dates.Wednesday
        base_date - Day(2)  # Previous Monday
    elseif day_of_week == Dates.Thursday
        base_date + Day(4)  # Next Monday
    elseif day_of_week == Dates.Friday
        base_date + Day(3)  # Next Monday
    else
        base_date  # Keep on same day (Mon/Sat/Sun)
    end
end

# Workers' Day handler with built-in observed logic
# In years 1980-1983, moves Tue/Wed/Thu/Fri to Monday
function is_workers_day_uruguay(x::TimeType)
    year = Dates.year(x)
    may_first = Date(year, 5, 1)

    # In years 1980-1983, apply observed rule; otherwise use actual date
    target_date = if 1980 <= year <= 1983
        uruguay_observed_date(may_first)
    else
        may_first
    end

    return Date(x) == target_date
end

function is_presidential_inauguration(x::TimeType)
    year = Dates.year(x)
    month = Dates.month(x)
    day = Dates.day(x)

    # Presidential inaugurations on March 1, every 5 years starting from 1985
    # Limited to 2020 based on historical data (future inaugurations may vary)
    return month == 3 && day == 1 && year >= 1985 && year <= 2020 && (year - 1985) % 5 == 0
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
        Holiday("Constitution Day", is_july_18th),

        # Independence Day
        Holiday("Independence Day", is_august_25th),

        # Beaches Day (ended in 1979, was also present 1936-1979)
        Holiday("Beaches Day", is_december_8th, end_year = 1979),

        # Day of the Family (Christmas)
        Holiday("Day of the Family", Christian.is_christmas_day),
    ]
end

end

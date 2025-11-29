module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

# Workers' Day with observed rule for 1980-1983
function is_workers_day_1980_to_1983(x::TimeType)
    year = Dates.year(x)
    (1980 <= year <= 1983) || return false

    may_first = Date(year, 5, 1)
    day_of_week = Dates.dayofweek(may_first)

    # Calculate observed date based on day of week
    observed = if day_of_week in [Dates.Tuesday, Dates.Wednesday]
        may_first - Day(day_of_week - 1)  # Previous Monday
    elseif day_of_week in [Dates.Thursday, Dates.Friday]
        may_first + Day(8 - day_of_week)  # Next Monday
    else
        may_first  # Mon/Sat/Sun stay on May 1
    end

    return Date(x) == observed
end

function Holidays.fetch_holidays(::Type{Holidays.Uruguay})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Presidential Inauguration Day", is_march_1st, start_year = 1985, end_year = 2020, only_years = year -> year % 5 == 0),
        Holiday("Workers' Day", is_may_1st, end_year = 1979),
        Holiday("Workers' Day", is_workers_day_1980_to_1983),
        Holiday("Workers' Day", is_may_1st, start_year = 1984),
        Holiday("Constitution Day", is_july_18th),
        Holiday("Independence Day", is_august_25th),
        Holiday("Beaches Day", is_december_8th, start_year = 1936, end_year = 1979),
        Holiday("Day of the Family", Christian.is_christmas_day),
    ]
end

end

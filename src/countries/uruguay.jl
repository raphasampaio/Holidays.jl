module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

function is_july_18th(x::TimeType)
    return is_july(x) && is_day(x, 18)
end

function is_august_25th(x::TimeType)
    return is_august(x) && is_day(x, 25)
end

function is_december_8th(x::TimeType)
    return is_december(x) && is_day(x, 8)
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
        Holiday("New Year's Day", is_january_1st),
        Holiday("Presidential Inauguration Day", is_presidential_inauguration),
        Holiday("Workers' Day", is_may_1st, end_year = 1979),
        Holiday("Workers' Day", is_may_1st, start_year = 1980, end_year = 1983, observed = previous_monday_if_falls_on_tuesday_or_wednesday_or_next_monday_if_falls_on_thursday_or_friday),
        Holiday("Workers' Day", is_may_1st, start_year = 1984),
        Holiday("Constitution Day", is_july_18th),
        Holiday("Independence Day", is_august_25th),
        Holiday("Beaches Day", is_december_8th, start_year = 1936, end_year = 1979),
        Holiday("Day of the Family", Christian.is_christmas_day),
    ]
end

end

module CanadaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

const Canada = Holidays.Canada

function is_dominion_day(x::TimeType)
    return Dates.year(x) < 1982 && is_july(x) && is_day(x, 1)
end

function is_canada_day(x::TimeType)
    return Dates.year(x) >= 1982 && is_july(x) && is_day(x, 1)
end

function is_labour_day_canada(x::TimeType)
    return is_september(x) && is_first_monday_of_month(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Canada})
    return [
        Holiday("New Year's Day", International.is_new_years_day, observed = Holidays.NextWeekday()),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Dominion Day", is_dominion_day),
        Holiday("Canada Day", is_canada_day),
        Holiday("Labour Day", is_labour_day_canada),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = Holidays.NextWeekday()),
    ]
end

end

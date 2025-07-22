module CanadaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

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
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("New Year's Day (Observed)", (x) -> is_monday(x) && is_january(x) && is_day(x, 2) && is_sunday(x - Day(1))),
        Holiday("New Year's Day (Observed)", (x) -> is_monday(x) && is_january(x) && is_day(x, 3) && is_saturday(x - Day(2))),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Dominion Day", is_dominion_day),
        Holiday("Canada Day", is_canada_day),
        Holiday("Labour Day", is_labour_day_canada),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Christmas Day (Observed)", (x) -> is_monday(x) && is_december(x) && is_day(x, 26) && is_sunday(x - Day(1))),
        Holiday("Christmas Day (Observed)", (x) -> is_monday(x) && is_december(x) && is_day(x, 27) && is_saturday(x - Day(2))),
    ]
end

end

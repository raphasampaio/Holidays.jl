module SwitzerlandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Switzerland = Holidays.Switzerland

function is_berchtoldstag(x::TimeType)
    return is_january(x) && Dates.day(x) == 2
end

function is_swiss_national_day(x::TimeType)
    return is_august(x) && Dates.day(x) == 1
end

function Holidays.fetch_holidays(::Type{Switzerland})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Berchtoldstag", is_berchtoldstag),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Swiss National Day", is_swiss_national_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

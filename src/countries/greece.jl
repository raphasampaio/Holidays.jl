module GreeceHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Greece = Holidays.Greece

function is_epiphany(x::TimeType)
    return is_january(x) && is_day(x, 6)
end

function is_independence_day(x::TimeType)
    return is_march(x) && is_day(x, 25)
end

function is_ochi_day(x::TimeType)
    return is_october(x) && is_day(x, 28)
end

function is_clean_monday(x::TimeType)
    # Monday before Orthodox Easter (48 days before)
    easter = Christian.easter_sunday(Dates.year(x))
    return x == easter - Dates.Day(48)
end

function Holidays.fetch_holidays(::Type{Holidays.Greece})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Clean Monday", is_clean_monday),
        Holiday("Independence Day", is_independence_day),
        Holiday("Orthodox Good Friday", Christian.is_good_friday),
        Holiday("Orthodox Easter", Christian.is_easter_sunday),
        Holiday("Orthodox Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Assumption Day", Christian.is_assumption_day),
        Holiday("Ochi Day", is_ochi_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

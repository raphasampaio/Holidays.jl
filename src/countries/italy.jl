module ItalyHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Italy = Holidays.Italy

function is_epiphany(x::TimeType)
    return is_january(x) && Dates.day(x) == 6
end

function is_liberation_day(x::TimeType)
    return is_april(x) && Dates.day(x) == 25
end

function is_republic_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 2
end

function is_ferragosto(x::TimeType)
    return is_august(x) && Dates.day(x) == 15
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && Dates.day(x) == 8
end

function Holidays.fetch_holidays(::Type{Italy})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Liberation Day", is_liberation_day),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Republic Day", is_republic_day),
        Holiday("Ferragosto", is_ferragosto),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("St. Stephen's Day", Christian.is_st_stephens_day),
    ]
end

end

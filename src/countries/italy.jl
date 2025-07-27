module ItalyHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_epiphany(x::TimeType)
    return is_january(x) && is_day(x, 6)
end

function is_liberation_day(x::TimeType)
    return is_april(x) && is_day(x, 25)
end

function is_republic_day(x::TimeType)
    return is_june(x) && is_day(x, 2)
end

function is_ferragosto(x::TimeType)
    return is_august(x) && is_day(x, 15)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function Holidays.fetch_holidays(::Type{Holidays.Holidays.Italy})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Epiphany", is_epiphany),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Liberation Day", is_liberation_day),
        Holiday("Labour Day", is_may_1st),
        Holiday("Republic Day", is_republic_day),
        Holiday("Ferragosto", is_ferragosto),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("St. Stephen's Day", Christian.is_st_stephens_day),
    ]
end

end

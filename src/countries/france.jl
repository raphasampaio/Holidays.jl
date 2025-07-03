module FranceHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_epiphany(x::TimeType)
    return is_january(x) && is_day(x, 6)
end

function is_bastille_day(x::TimeType)
    return is_july(x) && is_day(x, 14)
end

function is_armistice_day(x::TimeType)
    return is_november(x) && is_day(x, 11)
end

function Holidays.fetch_holidays(::Type{Holidays.France})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Victory in Europe Day", x -> is_may(x) && is_day(x, 8)),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Bastille Day", is_bastille_day),
        Holiday("Assumption of Mary", Christian.is_assumption_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Armistice Day", is_armistice_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

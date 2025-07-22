module PeruHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_st_peter_and_st_paul(x::TimeType)
    return is_june(x) && is_day(x, 29)
end

function is_independence_day(x::TimeType)
    return is_july(x) && (is_day(x, 28) || is_day(x, 29))
end

function is_battle_of_junin(x::TimeType)
    return is_august(x) && is_day(x, 6) && Dates.year(x) >= 2022
end

function is_santa_rosa_de_lima(x::TimeType)
    return is_august(x) && is_day(x, 30)
end

function is_battle_of_angamos(x::TimeType)
    return is_october(x) && is_day(x, 8)
end

function is_all_saints(x::TimeType)
    return is_november(x) && is_day(x, 1)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function is_battle_of_ayacucho(x::TimeType)
    return is_december(x) && is_day(x, 9) && Dates.year(x) >= 2022
end

function Holidays.fetch_holidays(::Type{Holidays.Peru})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Maundy Thursday", x -> x == (Christian.easter_sunday(Dates.year(x)) - Dates.Day(3))),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("St. Peter and St. Paul", is_st_peter_and_st_paul),
        Holiday("Independence Day", is_independence_day),
        Holiday("Battle of Junín", is_battle_of_junin),
        Holiday("Santa Rosa de Lima", is_santa_rosa_de_lima),
        Holiday("Battle of Angamos", is_battle_of_angamos),
        Holiday("All Saints' Day", is_all_saints),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Battle of Ayacucho", is_battle_of_ayacucho),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

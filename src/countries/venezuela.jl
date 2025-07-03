module VenezuelaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_declaration_of_independence(x::TimeType)
    return is_april(x) && is_day(x, 19)
end

function is_battle_of_carabobo(x::TimeType)
    return is_june(x) && is_day(x, 24)
end

function is_independence_day(x::TimeType)
    return is_july(x) && is_day(x, 5)
end

function is_birthday_of_bolivar(x::TimeType)
    return is_july(x) && is_day(x, 24)
end

function is_indigenous_resistance_day(x::TimeType)
    return is_october(x) && is_day(x, 12)
end

function Holidays.fetch_holidays(::Type{Holidays.Venezuela})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Carnival Monday", Christian.is_shrove_monday),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Declaration of Independence", is_declaration_of_independence),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Battle of Carabobo", is_battle_of_carabobo),
        Holiday("Independence Day", is_independence_day),
        Holiday("Birthday of Simón Bolívar", is_birthday_of_bolivar),
        Holiday("Indigenous Resistance Day", is_indigenous_resistance_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

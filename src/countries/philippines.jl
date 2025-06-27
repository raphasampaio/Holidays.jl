module PhilippinesHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Philippines = Holidays.Philippines

function is_peoples_power_anniversary(x::TimeType)
    return is_february(x) && Dates.day(x) == 25
end

function is_araw_ng_kagitingan(x::TimeType)
    return is_april(x) && Dates.day(x) == 9
end

function is_independence_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 12
end

function is_ninoy_aquino_day(x::TimeType)
    return is_august(x) && Dates.day(x) == 21
end

function is_national_heroes_day(x::TimeType)
    # Last Monday of August
    return is_august(x) && is_monday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
end

function is_all_saints_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 1
end

function is_bonifacio_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 30
end

function is_rizal_day(x::TimeType)
    return is_december(x) && Dates.day(x) == 30
end

function is_chinese_new_year(x::TimeType)
    # Simplified - using fixed dates for common years
    chinese_new_years = Dict(
        2024 => Date(2024, 2, 10),
        2025 => Date(2025, 1, 29),
        2026 => Date(2026, 2, 17),
        2027 => Date(2027, 2, 6),
    )
    return haskey(chinese_new_years, Dates.year(x)) && x == chinese_new_years[Dates.year(x)]
end

function is_eid_al_fitr(x::TimeType)
    # Eid al-Fitr (simplified dates)
    eid_dates = Dict(
        2024 => Date(2024, 4, 10),
        2025 => Date(2025, 3, 30),
        2026 => Date(2026, 3, 20),
        2027 => Date(2027, 3, 9),
    )
    return haskey(eid_dates, Dates.year(x)) && x == eid_dates[Dates.year(x)]
end

function Holidays.fetch_holidays(::Type{Philippines})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Chinese New Year", is_chinese_new_year),
        Holiday("People Power Anniversary", is_peoples_power_anniversary),
        Holiday("Araw ng Kagitingan", is_araw_ng_kagitingan),
        Holiday("Maundy Thursday", x -> x == (Christian.easter(Dates.year(x)) - Dates.Day(3))),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Black Saturday", x -> x == (Christian.easter(Dates.year(x)) - Dates.Day(1))),
        Holiday("Easter Sunday", Christian.is_easter),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Ninoy Aquino Day", is_ninoy_aquino_day),
        Holiday("National Heroes Day", is_national_heroes_day),
        Holiday("All Saints' Day", is_all_saints_day),
        Holiday("Bonifacio Day", is_bonifacio_day),
        Holiday("Rizal Day", is_rizal_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Eid al-Fitr", is_eid_al_fitr),
    ]
end

end

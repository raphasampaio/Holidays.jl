module PhilippinesHolidays

using Dates
using Holidays

include("../dates.jl")

const Chinese = Holidays.Chinese
const Christian = Holidays.Christian

function is_peoples_power_anniversary(x::TimeType)
    return is_february(x) && is_day(x, 25)
end

function is_araw_ng_kagitingan(x::TimeType)
    return is_april(x) && is_day(x, 9)
end

function is_independence_day(x::TimeType)
    return is_june(x) && is_day(x, 12)
end

function is_ninoy_aquino_day(x::TimeType)
    return is_august(x) && is_day(x, 21)
end

function is_national_heroes_day(x::TimeType)
    return is_august(x) && is_last_monday_of_month(x)
end

function is_all_saints_day(x::TimeType)
    return is_november(x) && is_day(x, 1)
end

function is_bonifacio_day(x::TimeType)
    return is_november(x) && is_day(x, 30)
end

function is_rizal_day(x::TimeType)
    return is_december(x) && is_day(x, 30)
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

function Holidays.fetch_holidays(::Type{Holidays.Philippines})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Chinese New Year", Chinese.is_chinese_new_year),
        # Holiday("People Power Anniversary", is_peoples_power_anniversary),
        # Holiday("Araw ng Kagitingan", is_araw_ng_kagitingan),
        # Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Black Saturday", Christian.is_holy_saturday),
        # Holiday("Easter Sunday", Christian.is_easter_sunday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("Ninoy Aquino Day", is_ninoy_aquino_day),
        # Holiday("National Heroes Day", is_national_heroes_day),
        # Holiday("All Saints' Day", is_all_saints_day),
        # Holiday("Bonifacio Day", is_bonifacio_day),
        # Holiday("Rizal Day", is_rizal_day),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Eid al-Fitr", is_eid_al_fitr),
    ]
end

end

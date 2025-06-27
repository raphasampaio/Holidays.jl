module ChinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Chinese = Holidays.Chinese

const China = Holidays.China

function is_spring_festival(x::TimeType)
    # Use the more accurate Chinese calendar implementation
    return Chinese.is_chinese_new_year(x)
end

function is_tomb_sweeping_day(x::TimeType)
    # Use the Chinese calendar for Qingming Festival
    return Chinese.is_qingming_festival(x)
end

function is_dragon_boat_festival(x::TimeType)
    # Use the Chinese calendar for Dragon Boat Festival
    return Chinese.is_dragon_boat_festival(x)
end

function is_mid_autumn_festival(x::TimeType)
    # Use the Chinese calendar for Mid-Autumn Festival
    return Chinese.is_mid_autumn_festival(x)
end

function is_national_day(x::TimeType)
    return is_october(x) && Dates.day(x) == 1
end

function Holidays.fetch_holidays(::Type{China})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Spring Festival", is_spring_festival),
        Holiday("Lantern Festival", Chinese.is_lantern_festival),
        Holiday("Tomb-Sweeping Day", is_tomb_sweeping_day),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Dragon Boat Festival", is_dragon_boat_festival),
        Holiday("Mid-Autumn Festival", is_mid_autumn_festival),
        Holiday("National Day", is_national_day),
        # Note: Chinese holidays are now using proper lunar calendar calculations
        # from the Chinese calendar module for more accurate dates
    ]
end

end

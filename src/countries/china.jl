module ChinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Chinese = Holidays.Chinese

function is_national_day(x::TimeType)
    return is_october(x) && Dates.day(x) == 1
end

function Holidays.fetch_holidays(::Type{Holidays.China})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Spring Festival", Chinese.is_chinese_new_year),
        Holiday("Lantern Festival", Chinese.is_lantern_festival),
        Holiday("Tomb-Sweeping Day", Chinese.is_qingming_festival),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Dragon Boat Festival", Chinese.is_dragon_boat_festival),
        Holiday("Mid-Autumn Festival", Chinese.is_mid_autumn_festival),
        Holiday("National Day", is_national_day),
        # Note: Chinese holidays are now using proper lunar calendar calculations
        # from the Chinese calendar module for more accurate dates
    ]
end

end

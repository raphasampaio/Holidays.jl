module SouthKoreaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function is_independence_movement_day(x::TimeType)
    return is_march(x) && is_day(x, 1)
end

function is_childrens_day_korea(x::TimeType)
    return is_may(x) && is_day(x, 5)
end

function is_buddha_birthday(x::TimeType)
    # Simplified - usually in May, using May 8 as approximation
    # In reality this is lunar calendar based and varies
    return is_may(x) && is_day(x, 8)
end

function is_memorial_day_korea(x::TimeType)
    return is_june(x) && is_day(x, 6)
end

function is_constitution_day_korea(x::TimeType)
    return is_july(x) && is_day(x, 17)
end

function is_liberation_day_korea(x::TimeType)
    return is_august(x) && is_day(x, 15)
end

function is_national_foundation_day_korea(x::TimeType)
    return is_october(x) && is_day(x, 3)
end

function is_hangeul_day(x::TimeType)
    return is_october(x) && is_day(x, 9)
end

function Holidays.fetch_holidays(::Type{Holidays.SouthKorea})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Independence Movement Day", is_independence_movement_day),
        Holiday("Children's Day", is_childrens_day_korea),
        Holiday("Buddha's Birthday", is_buddha_birthday),
        Holiday("Memorial Day", is_memorial_day_korea),
        Holiday("Constitution Day", is_constitution_day_korea),
        Holiday("Liberation Day", is_liberation_day_korea),
        Holiday("National Foundation Day", is_national_foundation_day_korea),
        Holiday("Hangeul Day", is_hangeul_day),
        # Note: Korean holidays like Seollal and Chuseok are lunar-based and would need complex calculations
    ]
end

end

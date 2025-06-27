module SouthKoreaHolidays

using Dates
using Holidays

const Gregorian = Holidays.Gregorian

const SouthKorea = Holidays.SouthKorea

function is_independence_movement_day(x::TimeType)
    return Dates.month(x) == Dates.Mar && Dates.day(x) == 1
end

function is_childrens_day_korea(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 5
end

function is_buddha_birthday(x::TimeType)
    # Simplified - usually in May, using May 8 as approximation
    # In reality this is lunar calendar based and varies
    return Dates.month(x) == Dates.May && Dates.day(x) == 8
end

function is_memorial_day_korea(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 6
end

function is_constitution_day_korea(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 17
end

function is_liberation_day_korea(x::TimeType)
    return Dates.month(x) == Dates.Aug && Dates.day(x) == 15
end

function is_national_foundation_day_korea(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 3
end

function is_hangeul_day(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 9
end

function Holidays.fetch_holidays(::Type{SouthKorea})
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

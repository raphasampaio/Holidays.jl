module ChinaHolidays

using Dates
using Holidays

const Gregorian = Holidays.Gregorian
const International = Holidays.International

const China = Holidays.China

function is_spring_festival(x::TimeType)
    # Chinese New Year - simplified to February 10 as approximation
    # In reality this is lunar calendar based and varies each year
    return Dates.month(x) == Dates.Feb && Dates.day(x) == 10
end

function is_tomb_sweeping_day(x::TimeType)
    # Qingming Festival - usually April 4 or 5
    return Dates.month(x) == Dates.Apr && Dates.day(x) == 4
end

function is_dragon_boat_festival(x::TimeType)
    # Usually in June - using June 10 as approximation
    # In reality this is lunar calendar based
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 10
end

function is_mid_autumn_festival(x::TimeType)
    # Usually in September - using September 17 as approximation
    # In reality this is lunar calendar based
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 17
end

function is_national_day_china(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 1
end

function Holidays.fetch_holidays(::Type{China})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Spring Festival", is_spring_festival),
        Holiday("Tomb-Sweeping Day", is_tomb_sweeping_day),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Dragon Boat Festival", is_dragon_boat_festival),
        Holiday("Mid-Autumn Festival", is_mid_autumn_festival),
        Holiday("National Day", is_national_day_china),
        # Note: Many Chinese holidays are lunar-based and would need complex calculations
        # These are simplified approximations for the major holidays
    ]
end

end

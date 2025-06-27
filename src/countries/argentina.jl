module ArgentinaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Argentina = Holidays.Argentina

function is_truth_and_justice_day(x::TimeType)
    return Dates.month(x) == Dates.Mar && Dates.day(x) == 24
end

function is_veterans_day_argentina(x::TimeType)
    return Dates.month(x) == Dates.Apr && Dates.day(x) == 2
end

function is_revolution_day_argentina(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 25
end

function is_martin_guemes_day(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 17
end

function is_flag_day_argentina(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 20
end

function is_independence_day_argentina(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 9
end

function is_san_martin_day(x::TimeType)
    # Third Monday in August
    return Dates.month(x) == Dates.Aug && Dates.dayofweekofmonth(x) == 3 && Dates.dayofweek(x) == Dates.Mon
end

function is_respect_for_cultural_diversity_day(x::TimeType)
    # Second Monday in October
    return Dates.month(x) == Dates.Oct && Dates.dayofweekofmonth(x) == 2 && Dates.dayofweek(x) == Dates.Mon
end

function is_national_sovereignty_day(x::TimeType)
    # Fourth Monday in November
    return Dates.month(x) == Dates.Nov && Dates.dayofweekofmonth(x) == 4 && Dates.dayofweek(x) == Dates.Mon
end

function Holidays.fetch_holidays(::Type{Argentina})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Truth and Justice Day", is_truth_and_justice_day),
        Holiday("Veterans Day", is_veterans_day_argentina),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Revolution Day", is_revolution_day_argentina),
        Holiday("Martín Güemes Day", is_martin_guemes_day),
        Holiday("Flag Day", is_flag_day_argentina),
        Holiday("Independence Day", is_independence_day_argentina),
        Holiday("San Martín Day", is_san_martin_day),
        Holiday("Respect for Cultural Diversity Day", is_respect_for_cultural_diversity_day),
        Holiday("National Sovereignty Day", is_national_sovereignty_day),
        Holiday("Immaculate Conception", x -> Dates.month(x) == Dates.Dec && Dates.day(x) == 8),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

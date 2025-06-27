module ArgentinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Argentina = Holidays.Argentina

function is_truth_and_justice_day(x::TimeType)
    return is_march(x) && Dates.day(x) == 24
end

function is_veterans_day(x::TimeType)
    return is_april(x) && Dates.day(x) == 2
end

function is_revolution_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 25
end

function is_martin_guemes_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 17
end

function is_flag_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 20
end

function is_independence_day(x::TimeType)
    return is_july(x) && Dates.day(x) == 9
end

function is_san_martin_day(x::TimeType)
    # Third Monday in August
    return is_august(x) && Dates.dayofweekofmonth(x) == 3 && is_monday(x)
end

function is_respect_for_cultural_diversity_day(x::TimeType)
    # Second Monday in October
    return is_october(x) && Dates.dayofweekofmonth(x) == 2 && is_monday(x)
end

function is_national_sovereignty_day(x::TimeType)
    # Fourth Monday in November
    return is_november(x) && Dates.dayofweekofmonth(x) == 4 && is_monday(x)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && Dates.day(x) == 8
end

function Holidays.fetch_holidays(::Type{Argentina})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Truth and Justice Day", is_truth_and_justice_day),
        Holiday("Veterans Day", is_veterans_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Revolution Day", is_revolution_day),
        Holiday("Martín Güemes Day", is_martin_guemes_day),
        Holiday("Flag Day", is_flag_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("San Martín Day", is_san_martin_day),
        Holiday("Respect for Cultural Diversity Day", is_respect_for_cultural_diversity_day),
        Holiday("National Sovereignty Day", is_national_sovereignty_day),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

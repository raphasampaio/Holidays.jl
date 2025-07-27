module ArgentinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_truth_and_justice_day(x::TimeType)
    return is_march(x) && is_day(x, 24)
end

function is_veterans_day(x::TimeType)
    return is_april(x) && is_day(x, 2)
end

function is_revolution_day(x::TimeType)
    return is_may(x) && is_day(x, 25)
end

function is_martin_guemes_day(x::TimeType)
    return is_june(x) && is_day(x, 17)
end

function is_flag_day(x::TimeType)
    return is_june(x) && is_day(x, 20)
end

function is_independence_day(x::TimeType)
    return is_july(x) && is_day(x, 9)
end

function is_san_martin_day(x::TimeType)
    return is_august(x) && is_third_monday_of_month(x)
end

function is_respect_for_cultural_diversity_day(x::TimeType)
    return is_october(x) && is_second_monday_of_month(x)
end

function is_national_sovereignty_day(x::TimeType)
    return is_november(x) && is_fourth_monday_of_month(x)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function Holidays.fetch_holidays(::Type{Holidays.Argentina})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Truth and Justice Day", is_truth_and_justice_day),
        # Holiday("Veterans Day", is_veterans_day),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Revolution Day", is_revolution_day),
        # Holiday("Martín Güemes Day", is_martin_guemes_day),
        # Holiday("Flag Day", is_flag_day),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("San Martín Day", is_san_martin_day),
        # Holiday("Respect for Cultural Diversity Day", is_respect_for_cultural_diversity_day),
        # Holiday("National Sovereignty Day", is_national_sovereignty_day),
        # Holiday("Immaculate Conception", is_immaculate_conception),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

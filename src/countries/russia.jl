module RussiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_new_years_day(x::TimeType)
    if is_year_between(x, 1991, 2004)
        return is_january_1st(x)
    end
    return false
end

function is_orthodox_christmas(x::TimeType)
    return is_january(x) && is_day(x, 7)
end

function is_defender_of_fatherland_day(x::TimeType)
    return is_february(x) && is_day(x, 23)
end

function is_victory_day(x::TimeType)
    return is_may(x) && is_day(x, 9)
end

function is_russia_day(x::TimeType)
    return is_june(x) && is_day(x, 12)
end

function is_unity_day(x::TimeType)
    return is_november(x) && is_day(x, 4)
end

function Holidays.fetch_holidays(::Type{Holidays.Russia})
    return [
        Holiday("New Year's Day", is_new_years_day),
        # Holiday("Orthodox Christmas", is_orthodox_christmas),
        # Holiday("Defender of the Fatherland Day", is_defender_of_fatherland_day),
        # Holiday("International Women's Day", International.is_womens_day),
        # Holiday("Spring and Labour Day", International.is_workers_day),
        # Holiday("Victory Day", is_victory_day),
        # Holiday("Russia Day", is_russia_day),
        # Holiday("Unity Day", is_unity_day),
    ]
end

end

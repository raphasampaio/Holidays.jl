module RussiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Russia = Holidays.Russia

function is_orthodox_christmas(x::TimeType)
    return is_january(x) && Dates.day(x) == 7
end

function is_defender_of_fatherland_day(x::TimeType)
    return is_february(x) && Dates.day(x) == 23
end

function is_womens_day_russia(x::TimeType)
    return International.is_womens_day(x)
end

function is_spring_and_labour_day(x::TimeType)
    return International.is_workers_day(x)
end

function is_victory_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 9
end

function is_russia_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 12
end

function is_unity_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 4
end

function Holidays.fetch_holidays(::Type{Russia})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Orthodox Christmas", is_orthodox_christmas),
        Holiday("Defender of the Fatherland Day", is_defender_of_fatherland_day),
        Holiday("International Women's Day", is_womens_day_russia),
        Holiday("Spring and Labour Day", is_spring_and_labour_day),
        Holiday("Victory Day", is_victory_day),
        Holiday("Russia Day", is_russia_day),
        Holiday("Unity Day", is_unity_day),
    ]
end

end

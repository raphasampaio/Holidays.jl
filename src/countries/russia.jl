module RussiaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Russia = Holidays.Russia

function is_orthodox_christmas(x::TimeType)
    return Dates.month(x) == Dates.Jan && Dates.day(x) == 7
end

function is_defender_of_fatherland_day(x::TimeType)
    return Dates.month(x) == Dates.Feb && Dates.day(x) == 23
end

function is_womens_day_russia(x::TimeType)
    return International.is_womens_day(x)
end

function is_spring_and_labour_day(x::TimeType)
    return International.is_workers_day(x)
end

function is_victory_day(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 9
end

function is_russia_day(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 12
end

function is_unity_day(x::TimeType)
    return Dates.month(x) == Dates.Nov && Dates.day(x) == 4
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

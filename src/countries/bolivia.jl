module BoliviaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_plurinational_state_foundation_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jan && Dates.day(x) == 22
end

function is_aymara_new_year(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 21
end

function is_independence_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Aug && Dates.day(x) == 6
end

function is_day_of_dignity(x::Dates.TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 17
end

function is_all_saints_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Nov && Dates.day(x) == 2
end

function Holidays.fetch_holidays(::Type{Holidays.Bolivia})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Plurinational State Foundation Day", is_plurinational_state_foundation_day),
        Holiday("Carnival Monday", Christian.is_shrove_monday),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Corpus Christi", Christian.is_corpus_christi),
        Holiday("Aymara New Year", is_aymara_new_year),
        Holiday("Independence Day", is_independence_day),
        Holiday("Day of Dignity", is_day_of_dignity),
        Holiday("All Saints' Day", is_all_saints_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
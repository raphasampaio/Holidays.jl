module CzechRepublicHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const CzechRepublic = Holidays.CzechRepublic

function is_liberation_day(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 8
end

function is_st_cyril_and_methodius_day(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 5
end

function is_jan_hus_day(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 6
end

function is_czech_statehood_day(x::TimeType)
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 28
end

function is_independence_day(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 28
end

function is_freedom_day(x::TimeType)
    return Dates.month(x) == Dates.Nov && Dates.day(x) == 17
end

function Holidays.fetch_holidays(::Type{CzechRepublic})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Liberation Day", is_liberation_day),
        Holiday("St. Cyril and Methodius Day", is_st_cyril_and_methodius_day),
        Holiday("Jan Hus Day", is_jan_hus_day),
        Holiday("Czech Statehood Day", is_czech_statehood_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Freedom Day", is_freedom_day),
        Holiday("Christmas Eve", x -> Dates.month(x) == Dates.Dec && Dates.day(x) == 24),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

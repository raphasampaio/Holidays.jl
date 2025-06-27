module PolandHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Poland = Holidays.Poland

function is_epiphany(x::TimeType)
    return is_january(x) && Dates.day(x) == 6
end

function is_constitution_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 3
end

function is_assumption_day(x::TimeType)
    return is_august(x) && Dates.day(x) == 15
end

function is_independence_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 11
end

function Holidays.fetch_holidays(::Type{Poland})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Constitution Day", is_constitution_day),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Assumption of Mary", is_assumption_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

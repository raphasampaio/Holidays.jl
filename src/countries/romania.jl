module RomaniaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Romania = Holidays.Romania

function is_epiphany_romania(x::TimeType)
    return is_january(x) && Dates.day(x) == 6
end

function is_childrens_day_romania(x::TimeType)
    return is_june(x) && Dates.day(x) == 1
end

function is_assumption_romania(x::TimeType)
    return is_august(x) && Dates.day(x) == 15
end

function is_st_andrew_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 30
end

function is_national_day_romania(x::TimeType)
    return is_december(x) && Dates.day(x) == 1
end

function is_st_nicholas_day(x::TimeType)
    return is_december(x) && Dates.day(x) == 6
end

function Holidays.fetch_holidays(::Type{Romania})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Day after New Year's Day", x -> is_january(x) && Dates.day(x) == 2),
        Holiday("Epiphany", is_epiphany_romania),
        Holiday("Orthodox Easter", Christian.is_easter),
        Holiday("Orthodox Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Children's Day", is_childrens_day_romania),
        Holiday("Assumption of Mary", is_assumption_romania),
        Holiday("St. Andrew's Day", is_st_andrew_day),
        Holiday("National Day", is_national_day_romania),
        Holiday("St. Nicholas Day", is_st_nicholas_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

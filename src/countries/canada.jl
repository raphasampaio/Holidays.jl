module CanadaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Canada = Holidays.Canada

function is_family_day(x::TimeType)
    return Dates.year(x) >= 2008 && is_february(x) && is_third_monday_of_month(x)
end

function is_victoria_day(x::TimeType)
    # Monday preceding May 25
    return is_may(x) && is_monday(x) && is_day_between(x, 18, 24)
end

function is_canada_day(x::TimeType)
    return is_july(x) && is_day(x, 1)
end

function is_civic_holiday(x::TimeType)
    return is_august(x) && is_first_monday_of_month(x)
end

function is_labour_day_canada(x::TimeType)
    return is_september(x) && is_first_monday_of_month(x)
end

function is_thanksgiving_canada(x::TimeType)
    return is_october(x) && is_second_monday_of_month(x)
end

function is_remembrance_day(x::TimeType)
    return is_november(x) && is_day(x, 11)
end

function Holidays.fetch_holidays(::Type{Holidays.Canada})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Family Day", is_family_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Victoria Day", is_victoria_day),
        Holiday("Canada Day", is_canada_day),
        Holiday("Civic Holiday", is_civic_holiday),
        Holiday("Labour Day", is_labour_day_canada),
        Holiday("Thanksgiving Day", is_thanksgiving_canada),
        Holiday("Remembrance Day", is_remembrance_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

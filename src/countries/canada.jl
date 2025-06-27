module CanadaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Canada = Holidays.Canada

function is_family_day(x::TimeType)
    return Dates.year(x) >= 2008 && Dates.month(x) == Dates.Feb && Dates.dayofweekofmonth(x) == 3 && Dates.dayofweek(x) == Dates.Mon
end

function is_victoria_day(x::TimeType)
    # Monday preceding May 25
    return Dates.month(x) == Dates.May && Dates.dayofweek(x) == Dates.Mon && Dates.day(x) >= 18 && Dates.day(x) <= 24
end

function is_canada_day(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 1
end

function is_civic_holiday(x::TimeType)
    return Dates.month(x) == Dates.Aug && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function is_labour_day_canada(x::TimeType)
    return Dates.month(x) == Dates.Sep && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function is_thanksgiving_canada(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.dayofweekofmonth(x) == 2 && Dates.dayofweek(x) == Dates.Mon
end

function is_remembrance_day(x::TimeType)
    return Dates.month(x) == Dates.Nov && Dates.day(x) == 11
end

function Holidays.fetch_holidays(::Type{Canada})
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

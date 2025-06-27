module AustraliaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Australia = Holidays.Australia

function is_australia_day(x::TimeType)
    return is_january(x) && Dates.day(x) == 26
end

function is_anzac_day(x::TimeType)
    return is_april(x) && Dates.day(x) == 25
end

function is_queens_birthday(x::TimeType)
    # Second Monday in June (varies by state but this is common)
    return is_june(x) && Dates.dayofweekofmonth(x) == 2 && Dates.dayofweek(x) == Dates.Mon
end

function is_labour_day_october(x::TimeType)
    # First Monday in October (varies by state)
    return is_october(x) && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function Holidays.fetch_holidays(::Type{Australia})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Australia Day", is_australia_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Saturday", x -> x == (Christian.easter(Dates.year(x)) - Dates.Day(1))),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("ANZAC Day", is_anzac_day),
        Holiday("Queen's Birthday", is_queens_birthday),
        Holiday("Labour Day", is_labour_day_october),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

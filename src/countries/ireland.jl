module IrelandHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Ireland = Holidays.Ireland

function is_st_patricks_day(x::TimeType)
    return Dates.month(x) == Dates.Mar && Dates.day(x) == 17
end

function is_june_bank_holiday(x::TimeType)
    # First Monday in June
    return Dates.month(x) == Dates.Jun && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function is_august_bank_holiday(x::TimeType)
    # First Monday in August
    return Dates.month(x) == Dates.Aug && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function is_october_bank_holiday(x::TimeType)
    # Last Monday in October
    return Dates.month(x) == Dates.Oct && Dates.dayofweek(x) == Dates.Mon && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
end

function Holidays.fetch_holidays(::Type{Ireland})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("St. Patrick's Day", is_st_patricks_day),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("May Bank Holiday", x -> Dates.month(x) == Dates.May && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon),
        Holiday("June Bank Holiday", is_june_bank_holiday),
        Holiday("August Bank Holiday", is_august_bank_holiday),
        Holiday("October Bank Holiday", is_october_bank_holiday),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("St. Stephen's Day", Christian.is_boxing_day),
    ]
end

end

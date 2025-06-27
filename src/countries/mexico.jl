module MexicoHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Mexico = Holidays.Mexico

function is_constitution_day_mexico(x::TimeType)
    # First Monday in February
    return Dates.month(x) == Dates.Feb && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon
end

function is_benito_juarez_birthday(x::TimeType)
    # Third Monday in March
    return Dates.month(x) == Dates.Mar && Dates.dayofweekofmonth(x) == 3 && Dates.dayofweek(x) == Dates.Mon
end

function is_independence_day_mexico(x::TimeType)
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 16
end

function is_revolution_day_mexico(x::TimeType)
    # Third Monday in November
    return Dates.month(x) == Dates.Nov && Dates.dayofweekofmonth(x) == 3 && Dates.dayofweek(x) == Dates.Mon
end

function Holidays.fetch_holidays(::Type{Mexico})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Constitution Day", is_constitution_day_mexico),
        Holiday("Benito Juárez's Birthday", is_benito_juarez_birthday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Independence Day", is_independence_day_mexico),
        Holiday("Revolution Day", is_revolution_day_mexico),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

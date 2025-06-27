module MexicoHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Mexico = Holidays.Mexico

function is_constitution_day(x::TimeType)
    # First Monday in February
    return is_february(x) && Dates.dayofweekofmonth(x) == 1 && is_monday(x)
end

function is_benito_juarez_birthday(x::TimeType)
    # Third Monday in March
    return is_march(x) && Dates.dayofweekofmonth(x) == 3 && is_monday(x)
end

function is_independence_day(x::TimeType)
    return is_september(x) && Dates.day(x) == 16
end

function is_revolution_day(x::TimeType)
    # Third Monday in November
    return is_november(x) && Dates.dayofweekofmonth(x) == 3 && is_monday(x)
end

function Holidays.fetch_holidays(::Type{Mexico})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Constitution Day", is_constitution_day),
        Holiday("Benito Juárez's Birthday", is_benito_juarez_birthday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Revolution Day", is_revolution_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

module MexicoHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_constitution_day(x::TimeType)
    return is_february(x) && is_first_monday_of_month(x)
end

function is_benito_juarez_birthday(x::TimeType)
    return is_march(x) && is_third_monday_of_month(x)
end

function is_independence_day(x::TimeType)
    return is_september(x) && Dates.day(x) == 16
end

function is_revolution_day(x::TimeType)
    return is_november(x) && is_third_monday_of_month(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Mexico})
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

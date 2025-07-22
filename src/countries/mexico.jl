module MexicoHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_constitution_day(x::TimeType)
    y = year(x)
    if y >= 2006
        return is_february(x) && is_first_monday_of_month(x)
    else
        return is_february(x) && is_day(x, 5)
    end
end

function is_benito_juarez_birthday(x::TimeType)
    y = year(x)
    if y >= 2007
        return is_march(x) && is_third_monday_of_month(x)
    else
        return is_march(x) && is_day(x, 21)
    end
end

function is_independence_day(x::TimeType)
    return is_september(x) && is_day(x, 16)
end

function is_revolution_day(x::TimeType)
    y = year(x)
    if y >= 2006
        return is_november(x) && is_third_monday_of_month(x)
    else
        return is_november(x) && is_day(x, 20)
    end
end

function is_change_of_federal_government(x::TimeType)
    y = year(x)
    if y >= 2024
        return is_october(x) && is_day(x, 1) && (y - 2024) % 6 == 0
    else
        return is_december(x) && is_day(x, 1) && (y - 1970) % 6 == 0
    end
end

function Holidays.fetch_holidays(::Type{Holidays.Mexico})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Constitution Day", is_constitution_day),
        Holiday("Benito Juárez's Birthday", is_benito_juarez_birthday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Revolution Day", is_revolution_day),
        Holiday("Change of Federal Government", is_change_of_federal_government),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
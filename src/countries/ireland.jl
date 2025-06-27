module IrelandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Ireland = Holidays.Ireland

function is_st_patricks_day(x::TimeType)
    return is_march(x) && Dates.day(x) == 17
end

function is_june_bank(x::TimeType)
    return is_june(x) && is_first_monday_of_month(x)
end

function is_august_bank(x::TimeType)
    return is_august(x) && is_first_monday_of_month(x)
end

function is_october_bank(x::TimeType)
    return is_october(x) && is_last_monday_of_month(x)
end

function Holidays.fetch_holidays(::Type{Ireland})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("St. Patrick's Day", is_st_patricks_day),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("May Bank Holiday", x -> is_may(x) && is_first_monday_of_month(x)),
        Holiday("June Bank Holiday", is_june_bank),
        Holiday("August Bank Holiday", is_august_bank),
        Holiday("October Bank Holiday", is_october_bank),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("St. Stephen's Day", Christian.is_boxing_day),
    ]
end

end

module UnitedKingdomHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_early_may_bank_holiday(x::TimeType)
    return is_may(x) && is_first_monday_of_month(x)
end

function is_spring_bank_holiday(x::TimeType)
    return is_may(x) && is_last_monday_of_month(x)
end

function is_summer_bank_holiday(x::TimeType)
    return is_august(x) && is_last_monday_of_month(x)
end

function Holidays.fetch_holidays(::Type{Holidays.UnitedKingdom})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Early May Bank Holiday", is_early_may_bank_holiday),
        Holiday("Spring Bank Holiday", is_spring_bank_holiday),
        Holiday("Summer Bank Holiday", is_summer_bank_holiday),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

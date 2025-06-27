module IndiaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const India = Holidays.India

function is_republic_day(x::TimeType)
    return Dates.month(x) == Dates.Jan && Dates.day(x) == 26
end

function is_independence_day_india(x::TimeType)
    return Dates.month(x) == Dates.Aug && Dates.day(x) == 15
end

function is_gandhi_jayanti(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 2
end

function Holidays.fetch_holidays(::Type{India})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Republic Day", is_republic_day),
        Holiday("Independence Day", is_independence_day_india),
        Holiday("Gandhi Jayanti", is_gandhi_jayanti),
        # Note: Many Hindu festivals are lunar-based and would need complex calculations
        # These are the main fixed secular holidays
    ]
end

end

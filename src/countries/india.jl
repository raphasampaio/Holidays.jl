module IndiaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Hindu = Holidays.Hindu

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
        Holiday("Holi", Hindu.is_holi),
        Holiday("Ram Navami", Hindu.is_ram_navami),
        Holiday("Independence Day", is_independence_day_india),
        Holiday("Janmashtami", Hindu.is_janmashtami),
        Holiday("Gandhi Jayanti", is_gandhi_jayanti),
        Holiday("Dussehra", Hindu.is_dussehra),
        Holiday("Diwali", Hindu.is_diwali),
        # Note: Hindu festivals now use proper lunar calendar calculations
        # from the Hindu calendar module for more accurate dates
    ]
end

end

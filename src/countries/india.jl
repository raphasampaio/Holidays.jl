module IndiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Hindu = Holidays.Hindu

function is_republic_day(x::TimeType)
    return is_january(x) && Dates.day(x) == 26
end

function is_independence_day(x::TimeType)
    return is_august(x) && Dates.day(x) == 15
end

function is_gandhi_jayanti(x::TimeType)
    return is_october(x) && Dates.day(x) == 2
end

function Holidays.fetch_holidays(::Type{Holidays.India})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Republic Day", is_republic_day),
        Holiday("Holi", Hindu.is_holi),
        Holiday("Ram Navami", Hindu.is_ram_navami),
        Holiday("Independence Day", is_independence_day),
        Holiday("Janmashtami", Hindu.is_janmashtami),
        Holiday("Gandhi Jayanti", is_gandhi_jayanti),
        Holiday("Dussehra", Hindu.is_dussehra),
        Holiday("Diwali", Hindu.is_diwali),
        # Note: Hindu festivals now use proper lunar calendar calculations
        # from the Hindu calendar module for more accurate dates
    ]
end

end

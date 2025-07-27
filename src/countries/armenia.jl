module ArmeniaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function is_new_years_day(x::TimeType)
    if Dates.year(x) >= 1991 && is_january(x) && (is_day(x, 1) || is_day(x, 2))
        return true
    end

    if is_year_between(x, 2010, 2021) && is_january(x) && (is_day(x, 3) || is_day(x, 4))
        return true
    end

    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Armenia})
    return [
        Holiday("New Year's Day", is_new_years_day),
    ]
end

end

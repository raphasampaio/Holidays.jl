module BelarusHolidays

using Dates
using Holidays

include("../dates.jl")

function is_new_years_day(x::TimeType)
    if Dates.year(x) >= 1991 && is_january_1st(x)
        return true
    end

    if Dates.year(x) >= 2020 && is_january_2nd(x)
        return true
    end

    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Belarus})
    return [
        Holiday("New Year's Day", is_new_years_day),
    ]
end

end

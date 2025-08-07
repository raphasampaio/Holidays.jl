module SwedenHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_new_years_day(x::TimeType)
    if is_sunday(x)
        return false
    end
    return is_january_1st(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Sweden})
    return [
        Holiday("New Year's Day", is_new_years_day),
    ]
end

end

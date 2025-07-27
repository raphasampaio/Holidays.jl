module EstoniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Estonia})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
    ]
end

end

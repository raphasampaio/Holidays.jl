module CookIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.CookIslands})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 2000 && Gregorian.is_new_years_day(x)),
    ]
end

end

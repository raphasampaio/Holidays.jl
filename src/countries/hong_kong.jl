module HongKongHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.HongKong})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1977 && Gregorian.is_new_years_day(x)),
    ]
end

end

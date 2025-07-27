module HongKongHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.HongKong})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1977),
    ]
end

end

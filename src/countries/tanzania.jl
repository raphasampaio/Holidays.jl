module TanzaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tanzania})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1994 && is_january_1st(x)),
    ]
end

end

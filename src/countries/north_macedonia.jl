module NorthMacedoniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NorthMacedonia})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1999 && is_january_1st(x)),
    ]
end

end

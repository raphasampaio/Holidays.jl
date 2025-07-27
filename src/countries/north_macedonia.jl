module NorthMacedoniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NorthMacedonia})
    return [
        Holiday("New Year's Day", 1999, is_january_1st),
    ]
end

end

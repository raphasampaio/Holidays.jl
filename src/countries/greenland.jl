module GreenlandHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Greenland})
    return [
        Holiday("New Year's Day", 1979, is_january_1st),
    ]
end

end

module FalklandIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FalklandIslands})
    return [
        Holiday("New Year's Day", 1983, is_january_1st),
    ]
end

end

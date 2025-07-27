module CocosIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.CocosIslands})
    return [
        Holiday("New Year's Day", 1985, is_january_1st),
    ]
end

end

module NorthernMarianaIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NorthernMarianaIslands})
    return []
end

end

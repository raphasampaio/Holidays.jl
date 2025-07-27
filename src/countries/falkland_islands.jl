module FalklandIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FalklandIslands})
    return []
end

end

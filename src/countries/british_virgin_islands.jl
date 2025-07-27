module BritishVirginIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.BritishVirginIslands})
    return Date[]
end

end

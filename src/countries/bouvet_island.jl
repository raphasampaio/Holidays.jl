module BouvetIslandHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.BouvetIsland})
    return []
end

end

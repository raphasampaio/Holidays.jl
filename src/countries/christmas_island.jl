module ChristmasIslandHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.ChristmasIsland})
    return Date[]
end

end

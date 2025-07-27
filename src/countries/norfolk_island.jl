module NorfolkIslandHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NorfolkIsland})
    return []
end

end

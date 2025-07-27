module FrenchSouthernTerritoriesHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FrenchSouthernTerritories})
    return []
end

end

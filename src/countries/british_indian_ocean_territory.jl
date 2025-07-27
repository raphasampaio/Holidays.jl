module BritishIndianOceanTerritoryHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.BritishIndianOceanTerritory})
    return Date[]
end

end

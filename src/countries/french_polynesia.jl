module FrenchPolynesiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FrenchPolynesia})
    return []
end

end

module CaboVerdeHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.CaboVerde})
    return []
end

end

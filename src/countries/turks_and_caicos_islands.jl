module TurksAndCaicosIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.TurksAndCaicosIslands})
    return []
end

end

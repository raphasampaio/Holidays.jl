module HeardIslandAndMcdonaldIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.HeardIslandAndMcdonaldIslands})
    return Date[]
end

end

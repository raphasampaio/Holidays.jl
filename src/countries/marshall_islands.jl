module MarshallIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.MarshallIslands})
    return []
end

end

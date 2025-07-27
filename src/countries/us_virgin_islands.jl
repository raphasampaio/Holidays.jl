module USVirginIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.USVirginIslands})
    return Date[]
end

end

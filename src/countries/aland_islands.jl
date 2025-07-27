module AlandIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.AlandIslands})
    return Date[]
end

end

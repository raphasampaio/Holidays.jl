module FaroeIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FaroeIslands})
    return Date[]
end

end

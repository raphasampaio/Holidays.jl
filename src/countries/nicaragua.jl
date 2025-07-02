module NicaraguaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Nicaragua})
    return []
end

end

module LuxembourgHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Luxembourg})
    return []
end

end

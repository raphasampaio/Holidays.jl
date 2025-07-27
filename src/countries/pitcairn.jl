module PitcairnHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Pitcairn})
    return []
end

end

module BruneiDarussalamHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.BruneiDarussalam})
    return []
end

end

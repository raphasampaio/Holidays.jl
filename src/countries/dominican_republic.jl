module DominicanRepublicHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.DominicanRepublic})
    return []
end

end

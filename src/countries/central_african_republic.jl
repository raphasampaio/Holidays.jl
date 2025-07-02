module CentralAfricanRepublicHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.CentralAfricanRepublic})
    return []
end

end

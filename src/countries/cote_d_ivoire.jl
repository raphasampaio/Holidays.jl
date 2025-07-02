module CoteDIvoireHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.CoteDIvoire})
    return []
end

end

module SaintKittsAndNevisHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintKittsAndNevis})
    return []
end

end

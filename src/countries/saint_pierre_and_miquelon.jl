module SaintPierreAndMiquelonHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintPierreAndMiquelon})
    return []
end

end

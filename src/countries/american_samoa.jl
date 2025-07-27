module AmericanSamoaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.AmericanSamoa})
    return []
end

end

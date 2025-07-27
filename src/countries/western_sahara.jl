module WesternSaharaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.WesternSahara})
    return Date[]
end

end

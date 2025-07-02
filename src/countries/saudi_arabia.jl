module SaudiArabiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaudiArabia})
    return []
end

end

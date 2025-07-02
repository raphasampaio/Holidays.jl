module NorthKoreaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NorthKorea})
    return []
end

end

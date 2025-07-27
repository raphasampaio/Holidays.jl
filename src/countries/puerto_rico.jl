module PuertoRicoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.PuertoRico})
    return Date[]
end

end

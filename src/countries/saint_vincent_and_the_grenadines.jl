module SaintVincentAndTheGrenadinesHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintVincentAndTheGrenadines})
    return []
end

end

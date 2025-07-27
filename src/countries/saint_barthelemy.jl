module SaintBarthelemyHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintBarthelemy})
    return Date[]
end

end

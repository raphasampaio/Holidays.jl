module SaintHelenaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintHelena})
    return Date[]
end

end

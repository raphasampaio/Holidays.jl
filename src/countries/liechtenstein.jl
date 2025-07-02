module LiechtensteinHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Liechtenstein})
    return []
end

end

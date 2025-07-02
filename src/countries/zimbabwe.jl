module ZimbabweHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Zimbabwe})
    return []
end

end

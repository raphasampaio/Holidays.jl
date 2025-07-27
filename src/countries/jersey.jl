module JerseyHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Jersey})
    return Date[]
end

end

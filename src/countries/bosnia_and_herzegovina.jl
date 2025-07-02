module BosniaAndHerzegovinaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.BosniaAndHerzegovina})
    return []
end

end

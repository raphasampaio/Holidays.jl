module TheBahamasHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.TheBahamas})
    return []
end

end

module EastTimorHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.EastTimor})
    return []
end

end

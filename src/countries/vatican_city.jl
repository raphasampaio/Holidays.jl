module VaticanCityHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.VaticanCity})
    return []
end

end

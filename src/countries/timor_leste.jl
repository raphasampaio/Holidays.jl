module TimorLesteHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.TimorLeste})
    return []
end

end

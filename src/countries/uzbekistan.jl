module UzbekistanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Uzbekistan})
    return []
end

end

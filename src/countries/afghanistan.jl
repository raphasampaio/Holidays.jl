module AfghanistanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Afghanistan})
    return []
end

end

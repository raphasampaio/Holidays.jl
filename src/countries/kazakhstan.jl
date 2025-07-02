module KazakhstanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Kazakhstan})
    return []
end

end

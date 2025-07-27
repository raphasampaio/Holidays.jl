module HongKongHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.HongKong})
    return Date[]
end

end

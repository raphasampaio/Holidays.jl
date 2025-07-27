module WallisAndFutunaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.WallisAndFutuna})
    return Date[]
end

end

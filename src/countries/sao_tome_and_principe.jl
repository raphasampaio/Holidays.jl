module SaoTomeAndPrincipeHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaoTomeAndPrincipe})
    return []
end

end

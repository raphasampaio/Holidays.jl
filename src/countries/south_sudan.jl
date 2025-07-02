module SouthSudanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SouthSudan})
    return []
end

end

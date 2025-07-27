module MayotteHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Mayotte})
    return Date[]
end

end

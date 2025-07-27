module IsleOfManHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.IsleOfMan})
    return Date[]
end

end

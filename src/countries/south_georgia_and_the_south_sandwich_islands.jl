module SouthGeorgiaAndTheSouthSandwichIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SouthGeorgiaAndTheSouthSandwichIslands})
    return []
end

end

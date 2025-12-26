module ArgentinaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Argentina})
    return [
    ]
end

end

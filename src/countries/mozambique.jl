module MozambiqueHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Mozambique})
    return [
        Holiday("New Year's Day", 1975, is_january_1st),
    ]
end

end

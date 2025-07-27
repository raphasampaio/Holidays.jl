module IsleOfManHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.IsleOfMan})
    return [
        Holiday("New Year's Day", 1975, is_january_1st),
    ]
end

end

module GuineaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Guinea})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

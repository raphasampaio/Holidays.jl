module ZimbabweHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Zimbabwe})
    return [
        Holiday("New Year's Day", 1988, is_january_1st),
    ]
end

end

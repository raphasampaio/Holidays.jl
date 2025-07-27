module AlbaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Albania})
    return [
        Holiday("New Year's Day", 1993, is_january_1st),
        Holiday("New Year's Day", 1993, is_january_2nd),
    ]
end

end

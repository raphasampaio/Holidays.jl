module LesothoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Lesotho})
    return [
        Holiday("New Year's Day", 1996, is_january_1st),
    ]
end

end

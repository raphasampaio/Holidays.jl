module HondurasHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Honduras})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

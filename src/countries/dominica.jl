module DominicaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Dominica})
    return [
        Holiday("New Year's Day", 1990, is_january_1st),
    ]
end

end

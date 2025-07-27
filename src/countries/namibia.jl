module NamibiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Namibia})
    return [
        Holiday("New Year's Day", 1991, is_january_1st),
    ]
end

end

module TanzaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tanzania})
    return [
        Holiday("New Year's Day", 1994, is_january_1st),
    ]
end

end

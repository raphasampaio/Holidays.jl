module LuxembourgHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Luxembourg})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

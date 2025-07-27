module CambodiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Cambodia})
    return [
        Holiday("New Year's Day", 1993, is_january_1st),
    ]
end

end

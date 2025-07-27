module CroatiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Croatia})
    return [
        Holiday("New Year's Day", 1992, is_january_1st),
    ]
end

end

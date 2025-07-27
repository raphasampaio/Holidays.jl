module SaoTomeAndPrincipeHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaoTomeAndPrincipe})
    return [
        Holiday("New Year's Day", 2014, is_january_1st),
    ]
end

end

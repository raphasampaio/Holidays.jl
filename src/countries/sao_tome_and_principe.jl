module SaoTomeAndPrincipeHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaoTomeAndPrincipe})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 2014),
    ]
end

end

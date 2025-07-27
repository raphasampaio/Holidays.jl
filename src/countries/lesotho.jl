module LesothoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Lesotho})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1996),
    ]
end

end

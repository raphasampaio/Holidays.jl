module BelarusHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Belarus})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1991),
        Holiday("New Year's Day", is_january_2nd, start_year = 2020),
    ]
end

end

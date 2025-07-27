module AlbaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Albania})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1993),
        Holiday("New Year's Day", is_january_2nd, start_year = 1993),
    ]
end

end

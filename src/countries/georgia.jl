module GeorgiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Georgia})
    return [
        Holiday("New Year's Day", x -> is_january_1st(x) || is_january_2nd(x), start_year = 1991),
    ]
end

end

module ArmeniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Armenia})
    return [
        Holiday("New Year's Day", x -> is_january_1st(x) || is_january_2nd(x), start_year = 1991),
        Holiday("New Year's Day", x -> is_january_3rd(x) || is_january_4th(x), start_year = 2010, end_year = 2021),
    ]
end

end

module RomaniaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Romania})
    return [
        Holiday("New Year's Day", x -> is_january_1st(x) || is_january_2nd(x)),
    ]
end

end

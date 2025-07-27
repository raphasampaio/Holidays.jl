module GeorgiaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Georgia})
    return [
        Holiday("New Year's Day", 1991, x -> is_january_1st(x) || is_january_2nd(x)),
    ]
end

end

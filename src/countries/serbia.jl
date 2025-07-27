module SerbiaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Serbia})
    return [
        Holiday("New Year's Day", x -> is_january_1st(x) || is_january_2nd(x)),
    ]
end

end

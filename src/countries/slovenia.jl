module SloveniaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Slovenia})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1992 && is_january_1st(x)),
    ]
end

end

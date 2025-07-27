module GeorgiaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Georgia})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1991 && International.is_new_years_day(x)),
        Holiday("New Year's Day", x -> Dates.year(x) >= 1991 && is_january(x) && is_day(x, 2)),
    ]
end

end

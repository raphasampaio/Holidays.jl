module AlbaniaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Albania})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1993 && Gregorian.is_new_years_day(x)),
        Holiday("New Year's Day", x -> Dates.year(x) >= 1993 && is_january(x) && is_day(x, 2)),
    ]
end

end

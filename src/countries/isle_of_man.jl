module IsleOfManHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.IsleOfMan})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1975 && Gregorian.is_new_years_day(x)),
    ]
end

end

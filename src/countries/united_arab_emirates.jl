module UnitedArabEmiratesHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.UnitedArabEmirates})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1972 && Gregorian.is_new_years_day(x)),
    ]
end

end

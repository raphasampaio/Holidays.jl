module UnitedArabEmiratesHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.UnitedArabEmirates})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1972),
    ]
end

end

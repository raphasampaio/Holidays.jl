module UnitedArabEmiratesHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.UnitedArabEmirates})
    return [
        Holiday("New Year's Day", 1972, is_january_1st),
    ]
end

end

module UnitedArabEmiratesHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.UnitedArabEmirates})
    return []
end

end

module CoteDIvoireHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.CoteDIvoire})
    return [
        Holiday("New Year's Day", 1997, is_january_1st),
    ]
end

end

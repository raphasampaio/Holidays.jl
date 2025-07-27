module SlovakiaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Slovakia})
    return [
        Holiday("New Year's Day", 1993, is_january_1st),
    ]
end

end

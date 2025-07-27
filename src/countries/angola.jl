module AngolaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Angola})
    return [
        Holiday("New Year's Day", 1975, is_january_1st),
    ]
end

end

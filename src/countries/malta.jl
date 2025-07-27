module MaltaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Malta})
    return [
        Holiday("New Year's Day", 1980, is_january_1st),
    ]
end

end

module TimorLesteHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.TimorLeste})
    return [
        Holiday("New Year's Day", 2006, is_january_1st),
    ]
end

end

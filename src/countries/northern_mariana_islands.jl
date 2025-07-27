module NorthernMarianaIslandsHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.NorthernMarianaIslands})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

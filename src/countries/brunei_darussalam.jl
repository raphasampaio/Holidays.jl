module BruneiDarussalamHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.BruneiDarussalam})
    return [
        Holiday("New Year's Day", 1984, is_january_1st),
    ]
end

end

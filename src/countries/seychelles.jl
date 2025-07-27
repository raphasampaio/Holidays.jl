module SeychellesHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Seychelles})
    return [
        Holiday("New Year's Day", 1994, is_january_1st),
    ]
end

end

module LaosHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Laos})
    return [
        Holiday("New Year's Day", 1976, is_january_1st),
    ]
end

end

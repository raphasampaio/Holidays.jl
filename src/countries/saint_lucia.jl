module SaintLuciaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.SaintLucia})
    return [
        Holiday("New Year's Day", 1979, is_january_1st),
    ]
end

end

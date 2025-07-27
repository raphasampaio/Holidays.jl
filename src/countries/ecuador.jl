module EcuadorHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Ecuador})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

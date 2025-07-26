module EcuadorHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Ecuador})
    return []
end

end

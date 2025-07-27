module EcuadorHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Ecuador})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
    ]
end

end

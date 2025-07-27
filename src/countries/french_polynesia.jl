module FrenchPolynesiaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.FrenchPolynesia})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
    ]
end

end

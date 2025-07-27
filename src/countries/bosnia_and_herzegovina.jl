module BosniaAndHerzegovinaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.BosniaAndHerzegovina})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
    ]
end

end

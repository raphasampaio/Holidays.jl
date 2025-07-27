module BeninHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Benin})
    return [
        Holiday("New Year's Day", 1977, is_january_1st),
    ]
end

end

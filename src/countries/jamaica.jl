module JamaicaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Jamaica})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

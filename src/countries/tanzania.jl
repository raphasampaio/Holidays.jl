module TanzaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tanzania})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1994),
    ]
end

end

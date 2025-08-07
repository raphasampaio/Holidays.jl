module NigeriaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Nigeria})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1979),
    ]
end

end

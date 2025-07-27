module SanMarinoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SanMarino})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

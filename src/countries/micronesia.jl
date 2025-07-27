module MicronesiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Micronesia})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1987),
    ]
end

end

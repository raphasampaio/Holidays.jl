module MicronesiaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Micronesia})
    return [
        Holiday("New Year's Day", 1987, is_january_1st),
    ]
end

end

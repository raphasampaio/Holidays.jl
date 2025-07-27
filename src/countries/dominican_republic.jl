module DominicanRepublicHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.DominicanRepublic})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1998),
    ]
end

end

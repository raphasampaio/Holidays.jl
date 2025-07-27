module MoroccoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Morocco})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

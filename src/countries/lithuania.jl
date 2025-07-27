module LithuaniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Lithuania})
    return [
        Holiday("New Year's Day", 1990, is_january_1st),
    ]
end

end

module EquatorialGuineaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.EquatorialGuinea})
    return [
        Holiday("New Year's Day", 2007, is_january_1st),
    ]
end

end

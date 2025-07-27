module MontenegroHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Montenegro})
    return [
        Holiday("New Year's Day", 2007, is_january_1st),
        Holiday("New Year's Day", 2007, is_january_2nd),
    ]
end

end

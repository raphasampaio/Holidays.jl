module KazakhstanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Kazakhstan})
    return [
        Holiday("New Year's Day", 1991, is_january_1st),
        Holiday("New Year's Day", 1991, is_january_2nd),
    ]
end

end

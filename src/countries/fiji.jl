module FijiHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Fiji})
    return [
        Holiday("New Year's Day", 2016, is_january_1st),
    ]
end

end

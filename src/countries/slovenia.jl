module SloveniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Slovenia})
    return [
        Holiday("New Year's Day", 1992, is_january_1st),
    ]
end

end

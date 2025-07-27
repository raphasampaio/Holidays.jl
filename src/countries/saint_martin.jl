module SaintMartinHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SaintMartin})
    return [
        Holiday("New Year's Day", 2008, is_january_1st),
    ]
end

end

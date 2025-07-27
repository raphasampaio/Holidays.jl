module MongoliaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Mongolia})
    return [
        Holiday("New Year's Day", 2004, is_january_1st),
    ]
end

end

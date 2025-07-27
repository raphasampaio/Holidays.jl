module ElSalvadorHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.ElSalvador})
    return [
        Holiday("New Year's Day", 1973, is_january_1st),
    ]
end

end

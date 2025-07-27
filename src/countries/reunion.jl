module ReunionHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Reunion})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

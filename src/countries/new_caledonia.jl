module NewCaledoniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.NewCaledonia})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

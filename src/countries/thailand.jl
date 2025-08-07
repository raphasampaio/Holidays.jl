module ThailandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Buddhist = Holidays.Buddhist

function Holidays.fetch_holidays(::Type{Holidays.Thailand})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

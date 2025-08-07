module VietnamHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Vietnam = Holidays.Vietnam

function Holidays.fetch_holidays(::Type{Holidays.Vietnam})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

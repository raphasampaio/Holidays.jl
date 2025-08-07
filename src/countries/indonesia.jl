module IndonesiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Chinese = Holidays.Chinese
const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Indonesia})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

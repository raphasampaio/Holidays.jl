module BahamasHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Bahamas})
    return [
        Holiday("New Year's Day", 1974, is_january_1st),
    ]
end

end

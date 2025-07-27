module BulgariaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Bulgaria})
    return [
        Holiday("New Year's Day", 1990, is_january_1st),
    ]
end

end

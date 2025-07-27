module DjiboutiHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Djibouti})
    return [
        Holiday("New Year's Day", 1978, is_january_1st),
    ]
end

end

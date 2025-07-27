module SaintBarthelemyHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.SaintBarthelemy})
    return [
        Holiday("New Year's Day", 2008, is_january_1st),
    ]
end

end

module AnguillaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Anguilla})
    return [
        Holiday("New Year's Day", 2001, is_january_1st),
    ]
end

end

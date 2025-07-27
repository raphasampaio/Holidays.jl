module AnguillaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Anguilla})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 2001 && International.is_new_years_day(x)),
    ]
end

end

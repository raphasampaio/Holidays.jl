module AzerbaijanHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Azerbaijan})
    return [
        Holiday("New Year's Day", x -> Dates.year(x) >= 1990 && International.is_new_years_day(x)),
    ]
end

end

module EquatorialGuineaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.EquatorialGuinea})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 2007),
    ]
end

end

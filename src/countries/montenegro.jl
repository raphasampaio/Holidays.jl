module MontenegroHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Montenegro})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 2007),
        Holiday("New Year's Day", is_january_2nd, start_year = 2007),
    ]
end

end

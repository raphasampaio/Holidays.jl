module SloveniaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Slovenia})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1992),
    ]
end

end

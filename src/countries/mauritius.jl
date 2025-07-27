module MauritiusHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Mauritius})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1988),
    ]
end

end

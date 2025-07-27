module TongaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tonga})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1989),
    ]
end

end

module TongaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tonga})
    return [
        Holiday("New Year's Day", 1989, is_january_1st),
    ]
end

end

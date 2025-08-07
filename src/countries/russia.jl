module RussiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Russia})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1991, end_year = 2004),
    ]
end

end

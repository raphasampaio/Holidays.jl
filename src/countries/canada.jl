module CanadaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

const Canada = Holidays.Canada

function Holidays.fetch_holidays(::Type{Holidays.Canada})
    return [
        Holiday("New Year's Day", is_january_1st, observed = next_monday_if_falls_on_weekend),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Dominion Day", is_july_1st, end_year = 1981),
        Holiday("Canada Day", is_july_1st, start_year = 1982),
        Holiday("Labour Day", is_first_monday_of_september),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = next_monday_if_falls_on_weekend),
    ]
end

end

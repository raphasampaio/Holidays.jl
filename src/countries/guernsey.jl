module GuernseyHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Guernsey})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
    ]
end

end

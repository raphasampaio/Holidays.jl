module LuxembourgHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Luxembourg})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
    ]
end

end

module GuineaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Guinea})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
    ]
end

end

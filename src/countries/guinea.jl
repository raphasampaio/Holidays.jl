module GuineaHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Guinea})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
    ]
end

end

module KyrgyzstanHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.Kyrgyzstan})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

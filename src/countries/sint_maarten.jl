module SintMaartenHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function Holidays.fetch_holidays(::Type{Holidays.SintMaarten})
    return [
        Holiday("New Year's Day", 2011, is_january_1st),
    ]
end

end

module VanuatuHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Vanuatu})
    return []
end

end

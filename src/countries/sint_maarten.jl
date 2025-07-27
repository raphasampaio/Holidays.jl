module SintMaartenHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.SintMaarten})
    return []
end

end

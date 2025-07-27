module GibraltarHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Gibraltar})
    return []
end

end

module TrinidadAndTobagoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.TrinidadAndTobago})
    return []
end

end

module Timor-LesteHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Timor-Leste})
    return Date[]
end

end

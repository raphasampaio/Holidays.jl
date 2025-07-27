module CuracaoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Curacao})
    return Date[]
end

end

module FrenchGuianaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.FrenchGuiana})
    return Date[]
end

end

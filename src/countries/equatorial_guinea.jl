module EquatorialGuineaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.EquatorialGuinea})
    return []
end

end

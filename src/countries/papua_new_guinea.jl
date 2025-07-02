module PapuaNewGuineaHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.PapuaNewGuinea})
    return []
end

end

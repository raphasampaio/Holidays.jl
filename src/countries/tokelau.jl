module TokelauHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Tokelau})
    return Date[]
end

end

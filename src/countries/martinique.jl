module MartiniqueHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Martinique})
    return Date[]
end

end

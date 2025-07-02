module ElSalvadorHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.ElSalvador})
    return []
end

end

module TurkmenistanHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Turkmenistan})
    return []
end

end

module BonaireHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Bonaire})
    return Date[]
end

end

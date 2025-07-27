module BelizeHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Belize})
    return [
    ]
end

end

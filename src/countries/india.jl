module IndiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Hindu = Holidays.Hindu

function Holidays.fetch_holidays(::Type{Holidays.India})
    return []
end

end

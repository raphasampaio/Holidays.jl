module RepublicOfTheCongoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.RepublicOfTheCongo})
    return []
end

end

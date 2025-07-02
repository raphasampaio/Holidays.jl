module DemocraticRepublicOfTheCongoHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.DemocraticRepublicOfTheCongo})
    return []
end

end

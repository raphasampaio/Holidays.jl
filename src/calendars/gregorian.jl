module Gregorian

using Dates
using Holidays

include("../dates.jl")

function is_new_years_day(x::TimeType)
    return is_january(x) && Dates.day(x) == 1
end

end

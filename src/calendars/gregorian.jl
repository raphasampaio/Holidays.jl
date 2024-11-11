module Gregorian

using Dates

function is_new_years_day(x::TimeType)
    return Dates.month(x) == 1 && Dates.day(x) == 1
end

end

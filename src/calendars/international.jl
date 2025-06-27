module International

using Dates
using Holidays

function is_womens_day(x::TimeType)
    return is_march(x) && Dates.day(x) == 8
end

function is_workers_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 1
end

end

module International

using Dates
using Holidays

include("../dates.jl")

function is_new_years_day(x::TimeType)
    return is_january(x) && is_day(x, 1)
end

function is_womens_day(x::TimeType)
    return is_march(x) && is_day(x, 8)
end

function is_workers_day(x::TimeType)
    return is_may(x) && is_day(x, 1)
end

end

module MontenegroHolidays

using Dates
using Holidays

include("../dates.jl")

function is_new_years_day(x::TimeType)
    if Dates.year(x) >= 2007
        if International.is_new_years_day(x)
            return true
        end

        if is_january(x) && is_day(x, 2)
            return true
        end
    end
    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Montenegro})
    return [
        Holiday("New Year's Day", is_new_years_day),
    ]
end

end

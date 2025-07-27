module KazakhstanHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function is_new_years_day(x)
    if Dates.year(x) >= 1991
        if International.is_new_years_day(x)
            return true
        end

        if is_january(x) && is_day(x, 2)
            return true
        end
    end

    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Kazakhstan})
    return [
        Holiday("New Year's Day", is_new_years_day),
    ]
end

end

module CubaHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

function Holidays.fetch_holidays(::Type{Holidays.Cuba})
    return [
        Holiday("Liberation Day", x -> is_january(x) && is_day(x, 1)),
    ]
end

end

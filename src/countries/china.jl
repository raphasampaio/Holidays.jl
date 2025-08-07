module ChinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Chinese = Holidays.Chinese

function is_national_day(x::TimeType)
    return is_october(x) && is_day(x, 1)
end

function Holidays.fetch_holidays(::Type{Holidays.China})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end

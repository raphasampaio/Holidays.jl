module PeruHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_independence_day(x::TimeType)
    return is_july(x) && (is_day(x, 28) || is_day(x, 29))
end

function Holidays.fetch_holidays(::Type{Holidays.Peru})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Labour Day", is_may_1st),
        Holiday("St. Peter and St. Paul", is_june_29th),
        Holiday("Independence Day", is_independence_day),
        Holiday("Battle of Junín", is_august_6th, start_year = 2022),
        Holiday("Santa Rosa de Lima", is_august_30th),
        Holiday("Battle of Angamos", is_october_8th),
        Holiday("All Saints' Day", is_november_1st),
        Holiday("Immaculate Conception", is_december_8th),
        Holiday("Battle of Ayacucho", is_december_9th, start_year = 2022),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

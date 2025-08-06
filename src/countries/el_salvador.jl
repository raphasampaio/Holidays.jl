module ElSalvadorHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.ElSalvador})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1973),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday, start_year = 1973),
        Holiday("Good Friday", Christian.is_good_friday, start_year = 1973),
        Holiday("Holy Saturday", Christian.is_holy_saturday, start_year = 1973),
        Holiday("Labor Day", is_may_1st, start_year = 1973),
        Holiday("Mother's Day", is_may_10th, start_year = 2016),
        Holiday("Father's Day", is_june_17th, start_year = 2013),
        Holiday("Celebrations of San Salvador", is_august_6th, start_year = 1973),
        Holiday("Independence Day", is_september_15th, start_year = 1973),
        Holiday("All Souls' Day", is_november_2nd, start_year = 1973),
        Holiday("Christmas Day", Christian.is_christmas_day, start_year = 1973),
    ]
end

end

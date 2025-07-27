module NorwayHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Norway})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labor Day", is_may_1st),
        Holiday("Constitution Day", is_may_17th),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Sunday", Christian.is_whit_sunday),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Second Day of Christmas", Christian.is_boxing_day),
    ]
end

end

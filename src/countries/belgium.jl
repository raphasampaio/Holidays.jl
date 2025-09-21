module BelgiumHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

const Belgium = Holidays.Belgium

function Holidays.fetch_holidays(::Type{Belgium})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labor Day", is_may_1st),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Sunday", Christian.is_whit_sunday),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("National Day", is_july_21st),
        Holiday("Assumption Day", is_august_15th),
        Holiday("All Saints' Day", is_november_1st),
        Holiday("Armistice Day", is_november_11th),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

module DenmarkHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_general_prayer_day(x::TimeType)
    # Fourth Friday after Easter
    easter = Christian.easter_sunday(Dates.year(x))
    return x == easter + Dates.Day(26)
end

function is_constitution_day(x::TimeType)
    return is_june(x) && is_day(x, 5)
end

function Holidays.fetch_holidays(::Type{Holidays.Denmark})
    return [Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("General Prayer Day", is_general_prayer_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Sunday", Christian.is_whit_sunday),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Constitution Day", is_constitution_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

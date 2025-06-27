module NorwayHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Norway = Holidays.Norway

function is_maundy_thursday(x::TimeType)
    # Thursday before Easter Sunday
    easter = Christian.easter(Dates.year(x))
    return x == easter - Dates.Day(3)
end

function is_constitution_day(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 17
end

function Holidays.fetch_holidays(::Type{Norway})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),        Holiday("Maundy Thursday", is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Constitution Day", is_constitution_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Sunday", Christian.is_whit_sunday),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

module AustriaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Austria = Holidays.Austria

function is_epiphany(x::TimeType)
    return is_january(x) && Dates.day(x) == 6
end

function is_national_day(x::TimeType)
    return is_october(x) && Dates.day(x) == 26
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && Dates.day(x) == 8
end

function Holidays.fetch_holidays(::Type{Austria})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Assumption Day", Christian.is_assumption_day),
        Holiday("National Day", is_national_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

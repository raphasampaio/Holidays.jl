module SwedenHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Sweden = Holidays.Sweden

function is_epiphany(x::TimeType)
    return is_january(x) && Dates.day(x) == 6
end

function is_national_day(x::TimeType)
    return is_june(x) && Dates.day(x) == 6
end

function is_midsummer_eve(x::TimeType)
    # Friday between June 19-25
    if is_june(x) && is_friday(x)
        return Dates.day(x) >= 19 && Dates.day(x) <= 25
    end
    return false
end

function is_midsummer_day(x::TimeType)
    # Saturday between June 20-26
    if is_june(x) && is_saturday(x)
        return Dates.day(x) >= 20 && Dates.day(x) <= 26
    end
    return false
end

function is_all_saints_day(x::TimeType)
    # Saturday between October 31 and November 6
    if is_october(x) && is_saturday(x) && day(x) == 31
        return true
    elseif is_november(x) && is_saturday(x)
        return Dates.day(x) <= 6
    end
    return false
end

function Holidays.fetch_holidays(::Type{Sweden})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("National Day", is_national_day),
        Holiday("Whit Sunday", Christian.is_whit_sunday),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("Midsummer Eve", is_midsummer_eve),
        Holiday("Midsummer Day", is_midsummer_day),
        Holiday("All Saints' Day", is_all_saints_day),
        Holiday("Christmas Eve", Christian.is_christmas_eve),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

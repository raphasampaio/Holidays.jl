module SwedenHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Sweden = Holidays.Sweden

function is_epiphany(x::TimeType)
    return Dates.month(x) == Dates.Jan && Dates.day(x) == 6
end

function is_national_day(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 6
end

function is_midsummer_eve(x::TimeType)
    # Friday between June 19-25
    if Dates.month(x) == Dates.Jun && Dates.dayofweek(x) == Dates.Fri
        return Dates.day(x) >= 19 && Dates.day(x) <= 25
    end
    return false
end

function is_midsummer_day(x::TimeType)
    # Saturday between June 20-26
    if Dates.month(x) == Dates.Jun && Dates.dayofweek(x) == Dates.Sat
        return Dates.day(x) >= 20 && Dates.day(x) <= 26
    end
    return false
end

function is_all_saints_day(x::TimeType)
    # Saturday between October 31 and November 6
    if Dates.month(x) == Dates.Oct && Dates.dayofweek(x) == Dates.Sat && Dates.day(x) == 31
        return true
    elseif Dates.month(x) == Dates.Nov && Dates.dayofweek(x) == Dates.Sat
        return Dates.day(x) <= 6
    end
    return false
end

function Holidays.fetch_holidays(::Type{Sweden})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),        Holiday("Good Friday", Christian.is_good_friday),
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
        Holiday("Christmas Eve", x -> Dates.month(x) == Dates.Dec && Dates.day(x) == 24),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end

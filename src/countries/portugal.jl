module PortugalHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_freedom_day(x::TimeType)
    return is_april(x) && is_day(x, 25)
end

function is_portugal_day(x::TimeType)
    return is_june(x) && is_day(x, 10)
end

function is_republic_day(x::TimeType)
    return is_october(x) && is_day(x, 5)
end

function is_restoration_of_independence(x::TimeType)
    return is_december(x) && is_day(x, 1)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function Holidays.fetch_holidays(::Type{Holidays.Portugal})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Freedom Day", is_freedom_day),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Portugal Day", is_portugal_day),
        Holiday("Corpus Christi", Christian.is_corpus_christi),
        Holiday("Assumption Day", Christian.is_assumption_day),
        Holiday("Republic Day", is_republic_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
        Holiday("Restoration of Independence", is_restoration_of_independence),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

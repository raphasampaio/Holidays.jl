module PortugalHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Portugal})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Sunday", Christian.is_easter_sunday),
        Holiday("Freedom Day", is_april_25th, start_year = 1974),
        Holiday("Labor Day", is_may_1st, start_year = 1974),
        Holiday("Day of Portugal, Camões, and the Portuguese Communities", is_june_10th),
        Holiday("Corpus Christi", Christian.is_corpus_christi, skip_years = [2013, 2014, 2015]),
        Holiday("Assumption Day", is_august_15th),
        Holiday("Republic Day", is_october_5th, skip_years = [2013, 2014, 2015]),
        Holiday("All Saints' Day", is_november_1st, skip_years = [2013, 2014, 2015]),
        Holiday("Restoration of Independence Day", is_december_1st, skip_years = [2013, 2014, 2015]),
        Holiday("Immaculate Conception", is_december_8th),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

module SpainHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Spain})
    return [
        Holiday("New Year's Day", is_january_1st, skip_years = [2012, 2017, 2023]),
        Holiday("Epiphany", Christian.is_epiphany, skip_years = [2013, 2019]),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labor Day", is_may_1st, skip_years = [2011, 2016, 2022]),
        Holiday("Assumption Day", Christian.is_assumption_day, skip_years = [2010, 2021]),
        Holiday("National Day", is_october_12th, skip_years = [2014, 2025]),
        Holiday("All Saints' Day", Christian.is_all_saints_day, skip_years = [2015, 2020]),
        Holiday("Constitution Day", is_december_6th, skip_years = [2015, 2020]),
        Holiday("Immaculate Conception", Christian.is_immaculate_conception, skip_years = [2013, 2019, 2024]),
        Holiday("Christmas Day", Christian.is_christmas_day, skip_years = [2011, 2016, 2022]),
    ]
end

end

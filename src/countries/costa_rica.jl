module CostaRicaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_juan_santamaria_day(x::TimeType)
    year = Dates.year(x)
    if year in (2006, 2007, 2008)
        original_date = Date(year, 4, 11)
        return x == (original_date + Day(8 - Dates.dayofweek(original_date)))
    elseif year in (2023, 2024)
        original_date = Date(year, 4, 11)
        dayofweek = Dates.dayofweek(original_date)
        if dayofweek == Dates.Tuesday || dayofweek == Dates.Wednesday
            return x == (original_date - Day(dayofweek - 1))
        elseif dayofweek == Dates.Thursday
            return x == (original_date + Day(8 - dayofweek))
        else
            return is_april_11th(x)
        end
    else
        return is_april_11th(x)
    end
end

function is_international_labor_day(x::TimeType)
    year = Dates.year(x)
    if year == 2021
        original_date = Date(year, 5, 1)
        return x == (original_date + Day(8 - Dates.dayofweek(original_date)))
    else
        return is_may_1st(x)
    end
end

function is_annexation_of_the_party_of_nicoya_to_costa_rica(x::TimeType)
    year = Dates.year(x)
    if year in (2006, 2007, 2008)
        original_date = Date(year, 7, 25)
        return x == (original_date + Day(8 - Dates.dayofweek(original_date)))
    elseif year in (2020, 2021, 2023, 2024)
        original_date = Date(year, 7, 25)
        dayofweek = Dates.dayofweek(original_date)
        if dayofweek == Dates.Tuesday || dayofweek == Dates.Wednesday
            return x == (original_date - Day(dayofweek - 1))
        elseif dayofweek == Dates.Thursday || dayofweek == Dates.Saturday || dayofweek == Dates.Sunday
            return x == (original_date + Day(8 - dayofweek))
        else
            return Dates.month(x) == 7 && Dates.day(x) == 25
        end
    else
        return Dates.month(x) == 7 && Dates.day(x) == 25
    end
end

function is_mothers_day(x::TimeType)
    year = Dates.year(x)
    if year in (2006, 2007)
        original_date = Date(year, 8, 15)
        return x == (original_date + Day(8 - Dates.dayofweek(original_date)))
    elseif year in (2020, 2023, 2024)
        original_date = Date(year, 8, 15)
        dayofweek = Dates.dayofweek(original_date)
        if dayofweek == Dates.Tuesday || dayofweek == Dates.Wednesday
            return x == (original_date - Day(dayofweek - 1))
        elseif dayofweek == Dates.Thursday || dayofweek == Dates.Saturday
            return x == (original_date + Day(8 - dayofweek))
        else
            return is_august_15th(x)
        end
    else
        return is_august_15th(x)
    end
end

function is_independence_day(x::TimeType)
    year = Dates.year(x)
    if year in (2020, 2021, 2022)
        original_date = Date(year, 9, 15)
        dayofweek = Dates.dayofweek(original_date)
        if dayofweek == Dates.Tuesday || dayofweek == Dates.Wednesday
            return x == (original_date - Day(dayofweek - 1))
        elseif dayofweek == Dates.Thursday
            return x == (original_date + Day(8 - dayofweek))
        else
            return is_september_15th(x)
        end
    else
        return is_september_15th(x)
    end
end

function is_cultures_day(x::TimeType)
    year = Dates.year(x)
    if year >= 1971 && year <= 2019
        original_date = Date(year, 10, 12)
        dayofweek = Dates.dayofweek(original_date)
        if dayofweek in (Dates.Tuesday, Dates.Wednesday, Dates.Thursday, Dates.Friday)
            return x == (original_date + Day(8 - dayofweek))
        else
            return is_october_12th(x)
        end
    elseif year < 1971
        return is_october_12th(x)
    else
        return false
    end
end

function Holidays.fetch_holidays(::Type{Holidays.CostaRica})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Juan Santamaría Day", is_juan_santamaria_day),
        Holiday("International Labor Day", is_international_labor_day),
        Holiday("Annexation of the Party of Nicoya to Costa Rica", is_annexation_of_the_party_of_nicoya_to_costa_rica),
        Holiday("Mother's Day", is_mothers_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Cultures Day", is_cultures_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

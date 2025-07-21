module UnitedStatesHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian

const UnitedStates = Holidays.UnitedStates

function is_new_years_day(x::TimeType)
    return Dates.year(x) >= 1871 && Gregorian.is_new_years_day(x)
end

function is_new_years_day_observed(x::TimeType)
    if Dates.year(x) < 1871
        return false
    end
    
    # Check if it's New Year's Day itself
    if Gregorian.is_new_years_day(x)
        return true
    end
    
    # Check if it's the observed date when NYD falls on weekend
    # For current year's January 1
    jan_1 = Date(Dates.year(x), 1, 1)
    if is_saturday(jan_1) && x == jan_1 - Day(1)  # Observed on Friday (Dec 31 of previous year)
        return true
    elseif is_sunday(jan_1) && x == jan_1 + Day(1)  # Observed on Monday (Jan 2)
        return true
    end
    
    # Check if it's Dec 31 and the next year's Jan 1 falls on Saturday
    if is_december(x) && is_day(x, 31) && Dates.year(x) >= 1870
        next_jan_1 = Date(Dates.year(x) + 1, 1, 1)
        if is_saturday(next_jan_1)  # NYD of next year falls on Saturday, so observed on this Dec 31
            return true
        end
    end
    
    return false
end

function is_martin_luther_king_birthday(x::TimeType)
    return Dates.year(x) >= 1986 && is_january(x) && is_third_monday_of_month(x)
end

function is_washington_birthday(x::TimeType)
    return Dates.year(x) >= 1971 && is_february(x) && is_third_monday_of_month(x)
end

function is_columbus_day(x::TimeType)
    return Dates.year(x) >= 1971 && is_october(x) && is_second_monday_of_month(x)
end

function is_memorial_day(x::TimeType)
    return Dates.year(x) >= 1971 && is_may(x) && is_last_monday_of_month(x)
end

function is_independence_day(x::TimeType)
    return Dates.year(x) >= 1871 && is_july(x) && is_day(x, 4)
end

function is_independence_day_observed(x::TimeType)
    if Dates.year(x) < 1871
        return false
    end
    
    # Check if it's Independence Day itself
    if is_july(x) && is_day(x, 4)
        return true
    end
    
    # Check if it's the observed date when July 4th falls on weekend
    july_4 = Date(Dates.year(x), 7, 4)
    if is_saturday(july_4) && x == july_4 - Day(1)  # Observed on Friday
        return true
    elseif is_sunday(july_4) && x == july_4 + Day(1)  # Observed on Monday
        return true
    end
    
    return false
end

function is_labor_day(x::TimeType)
    return Dates.year(x) >= 1894 && is_september(x) && is_first_monday_of_month(x)
end

function is_thanksgiving_day(x::TimeType)
    return Dates.year(x) >= 1871 && is_november(x) && is_fourth_thursday_of_month(x)
end

function is_veterans_day(x::TimeType)
    return Dates.year(x) >= 1954 && is_november(x) && is_day(x, 11)
end

function is_veterans_day_observed(x::TimeType)
    if Dates.year(x) < 1954
        return false
    end
    
    # Check if it's Veterans Day itself
    if is_november(x) && is_day(x, 11)
        return true
    end
    
    # Check if it's the observed date when November 11th falls on weekend
    nov_11 = Date(Dates.year(x), 11, 11)
    if is_saturday(nov_11) && x == nov_11 - Day(1)  # Observed on Friday
        return true
    elseif is_sunday(nov_11) && x == nov_11 + Day(1)  # Observed on Monday
        return true
    end
    
    return false
end

function is_juneteenth_national_independence_day(x::TimeType)
    return Dates.year(x) >= 2021 && is_june(x) && is_day(x, 19)
end

function is_juneteenth_national_independence_day_observed(x::TimeType)
    if Dates.year(x) < 2021
        return false
    end
    
    # Check if it's Juneteenth itself
    if is_june(x) && is_day(x, 19)
        return true
    end
    
    # Check if it's the observed date when June 19th falls on weekend
    june_19 = Date(Dates.year(x), 6, 19)
    if is_saturday(june_19) && x == june_19 - Day(1)  # Observed on Friday
        return true
    elseif is_sunday(june_19) && x == june_19 + Day(1)  # Observed on Monday
        return true
    end
    
    return false
end

function is_patriot_day(x::TimeType)
    return Dates.year(x) >= 1969 && is_april(x) && is_third_monday_of_month(x)
end

function is_jefferson_davis_birthday(x::TimeType)
    return is_june(x) && is_first_monday_of_month(x)
end

function is_election_day(x::TimeType)
    return is_november(x) && is_tuesday(x) && is_day_between(x, 2, 8)
end

function is_christmas_day_observed(x::TimeType)
    # Check if it's Christmas Day itself
    if Christian.is_christmas_day(x)
        return true
    end
    
    # Check if it's the observed date when December 25th falls on weekend
    dec_25 = Date(Dates.year(x), 12, 25)
    if is_saturday(dec_25) && x == dec_25 - Day(1)  # Observed on Friday
        return true
    elseif is_sunday(dec_25) && x == dec_25 + Day(1)  # Observed on Monday
        return true
    end
    
    return false
end

function Holidays.fetch_holidays(::Type{UnitedStates})
    return [
        Holiday("New Year's Day", is_new_years_day_observed),
        Holiday("Martin Luther King Birthday", is_martin_luther_king_birthday),
        Holiday("Washington Birthday", is_washington_birthday),
        Holiday("Memorial Day", is_memorial_day),
        Holiday("Juneteenth National Independence Day", is_juneteenth_national_independence_day_observed),
        Holiday("Independence Day", is_independence_day_observed),
        Holiday("Labor Day", is_labor_day),
        Holiday("Columbus Day", is_columbus_day),
        Holiday("Veterans Day", is_veterans_day_observed),
        Holiday("Thanksgiving Day", is_thanksgiving_day),
        Holiday("Christmas Day", is_christmas_day_observed),
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Alabama}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Alaska}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Arizona}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Arkansas}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.California}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Colorado}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Connecticut}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Delaware}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Florida}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Georgia}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Hawaii}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Idaho}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Illinois}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Indiana}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Iowa}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Kansas}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Kentucky}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Louisiana}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Maine}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Maryland}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Massachusetts}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Michigan}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Minnesota}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Mississippi}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Missouri}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Montana}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Nebraska}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Nevada}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NewHampshire}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NewJersey}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NewMexico}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NewYork}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NorthCarolina}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.NorthDakota}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Ohio}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Oklahoma}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Oregon}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Pennsylvania}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.RhodeIsland}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.SouthCarolina}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.SouthDakota}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Tennessee}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Texas}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Utah}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Vermont}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Virginia}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Washington}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.WestVirginia}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Wisconsin}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

function Holidays.fetch_holidays(::Type{UnitedStates{Subdivision.Wyoming}})
    return [
        fetch_holidays(UnitedStates)...,
    ]
end

end

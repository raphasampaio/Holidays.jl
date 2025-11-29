module UnitedStatesHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

const UnitedStates = Holidays.UnitedStates

function is_washington_birthday(x::TimeType)
    year = Dates.year(x)
    if year == 1970
        # In 1970, Washington's Birthday was still celebrated on February 22
        return is_february_22nd(x)
    else
        # From 1971 onwards, it's the third Monday of February
        return is_third_monday_of_february(x)
    end
end

function is_columbus_day(x::TimeType)
    year = Dates.year(x)
    if year == 1970
        # In 1970, Columbus Day was still celebrated on October 12
        return is_october_12th(x)
    else
        # From 1971 onwards, it's the second Monday of October
        return is_second_monday_of_october(x)
    end
end

function is_memorial_day(x::TimeType)
    year = Dates.year(x)
    if year == 1970
        # In 1970, Memorial Day was still celebrated on May 30
        return is_may_30th(x)
    else
        # From 1971 onwards, it's the last Monday of May
        return is_last_monday_of_may(x)
    end
end

function is_veterans_day(x::TimeType)
    year = Dates.year(x)
    if year >= 1971 && year <= 1977
        # From 1971-1977, Veterans Day was moved to the fourth Monday of October
        return is_fourth_monday_of_october(x)
    else
        # Before 1971 and from 1978 onwards, it's November 11
        return is_november_11th(x)
    end
end

function Holidays.fetch_holidays(::Type{UnitedStates})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1871, observed = closest_weekday),
        Holiday("Martin Luther King Birthday", is_third_monday_of_january, start_year = 1986),
        Holiday("Washington Birthday", is_washington_birthday, start_year = 1872),
        Holiday("Memorial Day", is_memorial_day, start_year = 1889),
        Holiday("Juneteenth National Independence Day", is_june_19th, start_year = 2021, observed = closest_weekday),
        Holiday("Independence Day", is_july_4th, start_year = 1871, observed = closest_weekday),
        Holiday("Labor Day", is_first_monday_of_september, start_year = 1894),
        Holiday("Columbus Day", is_columbus_day, start_year = 1969),
        Holiday("Veterans Day", is_veterans_day, start_year = 1955, observed = closest_weekday),
        Holiday("Thanksgiving Day", is_fourth_thursday_of_november, start_year = 1871),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = closest_weekday),
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

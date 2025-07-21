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

function is_labor_day(x::TimeType)
    return Dates.year(x) >= 1894 && is_september(x) && is_first_monday_of_month(x)
end

function is_thanksgiving_day(x::TimeType)
    return Dates.year(x) >= 1871 && is_november(x) && is_fourth_thursday_of_month(x)
end

function is_veterans_day(x::TimeType)
    return Dates.year(x) >= 1954 && is_november(x) && is_day(x, 11)
end

function is_juneteenth_national_independence_day(x::TimeType)
    return Dates.year(x) >= 2021 && is_june(x) && is_day(x, 19)
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

function Holidays.fetch_holidays(::Type{UnitedStates})
    return [
        Holiday("New Year's Day", is_new_years_day),
        Holiday("Martin Luther King Birthday", is_martin_luther_king_birthday),
        Holiday("Washington Birthday", is_washington_birthday),
        Holiday("Memorial Day", is_memorial_day),
        Holiday("Juneteenth National Independence Day", is_juneteenth_national_independence_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Labor Day", is_labor_day),
        Holiday("Columbus Day", is_columbus_day),
        Holiday("Veterans Day", is_veterans_day),
        Holiday("Thanksgiving Day", is_thanksgiving_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
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

module ColombiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Colombia = Holidays.Colombia

function is_epiphany(x::TimeType)
    # Moved to first Monday after January 6
    if is_january(x) && Dates.day(x) >= 7 && Dates.day(x) <= 13 && is_monday(x)
        return true
    end
    return false
end

function is_st_joseph_day(x::TimeType)
    # Moved to nearest Monday after March 19
    if is_march(x) && is_monday(x)
        # Find the Monday that follows March 19
        march_19 = Date(Dates.year(x), 3, 19)
        days_after = Dates.dayofweek(march_19) == Dates.Mon ? 0 : (8 - Dates.dayofweek(march_19))
        return x == march_19 + Dates.Day(days_after)
    end
    return false
end

function is_independence_day(x::TimeType)
    return is_july(x) && Dates.day(x) == 20
end

function is_battle_of_boyaca(x::TimeType)
    return is_august(x) && Dates.day(x) == 7
end

function is_assumption(x::TimeType)
    # Moved to nearest Monday after August 15
    if is_august(x) && is_monday(x)
        august_15 = Date(Dates.year(x), 8, 15)
        days_after = Dates.dayofweek(august_15) == Dates.Mon ? 0 : (8 - Dates.dayofweek(august_15))
        return x == august_15 + Dates.Day(days_after)
    end
    return false
end

function is_columbus_day(x::TimeType)
    # Moved to nearest Monday after October 12
    if is_october(x) && is_monday(x)
        october_12 = Date(Dates.year(x), 10, 12)
        days_after = Dates.dayofweek(october_12) == Dates.Mon ? 0 : (8 - Dates.dayofweek(october_12))
        return x == october_12 + Dates.Day(days_after)
    end
    return false
end

function is_all_saints(x::TimeType)
    # Moved to nearest Monday after November 1
    if is_november(x) && is_monday(x)
        november_1 = Date(Dates.year(x), 11, 1)
        days_after = Dates.dayofweek(november_1) == Dates.Mon ? 0 : (8 - Dates.dayofweek(november_1))
        return x == november_1 + Dates.Day(days_after)
    end
    return false
end

function is_independence_cartagena(x::TimeType)
    # Moved to nearest Monday after November 11
    if is_november(x) && is_monday(x)
        november_11 = Date(Dates.year(x), 11, 11)
        days_after = Dates.dayofweek(november_11) == Dates.Mon ? 0 : (8 - Dates.dayofweek(november_11))
        return x == november_11 + Dates.Day(days_after)
    end
    return false
end

function Holidays.fetch_holidays(::Type{Colombia})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Epiphany", is_epiphany),
        Holiday("St. Joseph's Day", is_st_joseph_day),
        Holiday("Maundy Thursday", x -> x == (Christian.easter(Dates.year(x)) - Dates.Day(3))),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Sacred Heart", x -> x == (Christian.easter(Dates.year(x)) + Dates.Day(68))),
        Holiday("Independence Day", is_independence_day),
        Holiday("Battle of Boyacá", is_battle_of_boyaca),
        Holiday("Assumption of Mary", is_assumption),
        Holiday("Columbus Day", is_columbus_day),
        Holiday("All Saints' Day", is_all_saints),
        Holiday("Independence of Cartagena", is_independence_cartagena),
        Holiday("Immaculate Conception", x -> is_december(x) && Dates.day(x) == 8),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

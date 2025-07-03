module EcuadorHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_carnival_monday(x::TimeType)
    return x == (Christian.easter(Dates.year(x)) - Dates.Day(48))
end

function is_carnival_tuesday(x::TimeType)
    return x == (Christian.easter(Dates.year(x)) - Dates.Day(47))
end

function is_battle_of_pichincha(x::TimeType)
    # May 24: The Battle of Pichincha
    # Ref: https://en.wikipedia.org/wiki/Public_holidays_in_Ecuador
    #
    # If May 24 is a Tuesday, the holiday is observed on the preceding Monday.
    # If it's a Wednesday or Thursday, it's observed on the following Friday.
    # If it's a Saturday or Sunday, it's observed on the following Monday.
    # If it's a Monday or Friday, it's observed on that day.
    if is_may(x)
        may_24 = Date(Dates.year(x), 5, 24)
        day_of_week = Dates.dayofweek(may_24)

        if day_of_week == Dates.Tuesday
            return x == may_24 - Dates.Day(1)
        elseif day_of_week in (Dates.Wednesday, Dates.Thursday)
            return x == may_24 + Dates.Day(8 - day_of_week)
        elseif day_of_week in (Dates.Saturday, Dates.Sunday)
            return x == may_24 + Dates.Day(8 - day_of_week)
        else  # Monday or Friday
            return x == may_24
        end
    end
    return false
end

function is_independence_day(x::TimeType)
    # August 10: Independence Day
    # Ref: https://en.wikipedia.org/wiki/Public_holidays_in_Ecuador
    #
    # If August 10 is a Tuesday, the holiday is observed on the preceding Monday.
    # If it's a Wednesday or Thursday, it's observed on the following Friday.
    # If it's a Saturday or Sunday, it's observed on the following Monday.
    # If it's a Monday or Friday, it's observed on that day.
    if is_august(x)
        aug_10 = Date(Dates.year(x), 8, 10)
        day_of_week = Dates.dayofweek(aug_10)

        if day_of_week == Dates.Tuesday
            return x == aug_10 - Dates.Day(1)
        elseif day_of_week in (Dates.Wednesday, Dates.Thursday)
            return x == aug_10 + Dates.Day(8 - day_of_week)
        elseif day_of_week in (Dates.Saturday, Dates.Sunday)
            return x == aug_10 + Dates.Day(8 - day_of_week)
        else  # Monday or Friday
            return x == aug_10
        end
    end
    return false
end

function is_independence_of_guayaquil(x::TimeType)
    # October 9: Independence of Guayaquil
    # Ref: https://en.wikipedia.org/wiki/Public_holidays_in_Ecuador
    #
    # If October 9 is a Tuesday, the holiday is observed on the preceding Monday.
    # If it's a Wednesday or Thursday, it's observed on the following Friday.
    # If it's a Saturday or Sunday, it's observed on the following Monday.
    # If it's a Monday or Friday, it's observed on that day.
    if is_october(x)
        oct_9 = Date(Dates.year(x), 10, 9)
        day_of_week = Dates.dayofweek(oct_9)

        if day_of_week == Dates.Tuesday
            return x == oct_9 - Dates.Day(1)
        elseif day_of_week in (Dates.Wednesday, Dates.Thursday)
            return x == oct_9 + Dates.Day(8 - day_of_week)
        elseif day_of_week in (Dates.Saturday, Dates.Sunday)
            return x == oct_9 + Dates.Day(8 - day_of_week)
        else  # Monday or Friday
            return x == oct_9
        end
    end
    return false
end

function is_all_souls_day(x::TimeType)
    return is_november(x) && is_day(x, 2)
end

function is_independence_of_cuenca(x::TimeType)
    return is_november(x) && is_day(x, 3)
end

function Holidays.fetch_holidays(::Type{Holidays.Ecuador})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Carnival Monday", is_carnival_monday),
        Holiday("Carnival Tuesday", is_carnival_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("The Battle of Pichincha", is_battle_of_pichincha),
        Holiday("Independence Day", is_independence_day),
        Holiday("Independence of Guayaquil", is_independence_of_guayaquil),
        Holiday("All Souls' Day", is_all_souls_day),
        Holiday("Independence of Cuenca", is_independence_of_cuenca),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
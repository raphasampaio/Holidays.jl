module ColombiaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_epiphany(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_january(x) && is_day(x, 6)
    else
        # From 1984 onwards: moved to Monday after January 6 (or on January 6 if it's already Monday)
        jan_6 = Date(year, 1, 6)
        if is_monday(jan_6)
            # If January 6 is already Monday, observe it on that day
            return x == jan_6
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(jan_6)
            observed_date = jan_6 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_st_joseph_day(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_march(x) && is_day(x, 19)
    else
        # From 1984 onwards: moved to Monday after March 19 (or on March 19 if it's already Monday)
        mar_19 = Date(year, 3, 19)
        if is_monday(mar_19)
            # If March 19 is already Monday, observe it on that day
            return x == mar_19
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(mar_19)
            observed_date = mar_19 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_st_peter_and_st_paul_day(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_june(x) && is_day(x, 29)
    else
        # From 1984 onwards: moved to Monday after June 29 (or on June 29 if it's already Monday)
        jun_29 = Date(year, 6, 29)
        if is_monday(jun_29)
            # If June 29 is already Monday, observe it on that day
            return x == jun_29
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(jun_29)
            observed_date = jun_29 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_independence_day(x::TimeType)
    return is_july(x) && is_day(x, 20)
end

function is_battle_of_boyaca(x::TimeType)
    return is_august(x) && is_day(x, 7)
end

function is_assumption(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_august(x) && is_day(x, 15)
    else
        # From 1984 onwards: moved to Monday after August 15 (or on August 15 if it's already Monday)
        aug_15 = Date(year, 8, 15)
        if is_monday(aug_15)
            # If August 15 is already Monday, observe it on that day
            return x == aug_15
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(aug_15)
            observed_date = aug_15 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_columbus_day(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_october(x) && is_day(x, 12)
    else
        # From 1984 onwards: moved to Monday after October 12 (or on October 12 if it's already Monday)
        oct_12 = Date(year, 10, 12)
        if is_monday(oct_12)
            # If October 12 is already Monday, observe it on that day
            return x == oct_12
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(oct_12)
            observed_date = oct_12 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_all_saints(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_november(x) && is_day(x, 1)
    else
        # From 1984 onwards: moved to Monday after November 1 (or on November 1 if it's already Monday)
        nov_1 = Date(year, 11, 1)
        if is_monday(nov_1)
            # If November 1 is already Monday, observe it on that day
            return x == nov_1
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(nov_1)
            observed_date = nov_1 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_ascension_day_colombia(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date (Easter + 39 days)
        return x == (Christian.easter_sunday(year) + Dates.Day(39))
    else
        # From 1984 onwards: moved to nearest Monday after Ascension Day
        actual_date = Christian.easter_sunday(year) + Dates.Day(39)
        if is_monday(actual_date)
            return x == actual_date
        else
            days_after = 8 - Dates.dayofweek(actual_date)
            observed_date = actual_date + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_corpus_christi_colombia(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date (Easter + 60 days)
        return x == (Christian.easter_sunday(year) + Dates.Day(60))
    else
        # From 1984 onwards: moved to nearest Monday after Corpus Christi
        actual_date = Christian.easter_sunday(year) + Dates.Day(60)
        if is_monday(actual_date)
            return x == actual_date
        else
            days_after = 8 - Dates.dayofweek(actual_date)
            observed_date = actual_date + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_sacred_heart(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: not a holiday
        return false
    else
        # From 1984 onwards: moved to nearest Monday after Sacred Heart (Easter + 68)
        actual_date = Christian.easter_sunday(year) + Dates.Day(68)
        if is_monday(actual_date)
            return x == actual_date
        else
            days_after = 8 - Dates.dayofweek(actual_date)
            observed_date = actual_date + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function is_independence_cartagena(x::TimeType)
    year = Dates.year(x)

    if year < 1984
        # Before 1984: observed on actual date
        return is_november(x) && is_day(x, 11)
    else
        # From 1984 onwards: moved to Monday after November 11 (or on November 11 if it's already Monday)
        nov_11 = Date(year, 11, 11)
        if is_monday(nov_11)
            # If November 11 is already Monday, observe it on that day
            return x == nov_11
        else
            # Otherwise, move to the next Monday
            days_after = 8 - Dates.dayofweek(nov_11)
            observed_date = nov_11 + Dates.Day(days_after)
            return x == observed_date
        end
    end
end

function Holidays.fetch_holidays(::Type{Holidays.Colombia})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Epiphany", is_epiphany),
        Holiday("St. Joseph's Day", is_st_joseph_day),
        Holiday("Maundy Thursday", x -> x == (Christian.easter_sunday(Dates.year(x)) - Dates.Day(3))),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Ascension Day", is_ascension_day_colombia),
        Holiday("Corpus Christi", is_corpus_christi_colombia),
        Holiday("Sacred Heart", is_sacred_heart),
        Holiday("Saint Peter and Saint Paul's Day", is_st_peter_and_st_paul_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Battle of Boyacá", is_battle_of_boyaca),
        Holiday("Assumption of Mary", is_assumption),
        Holiday("Columbus Day", is_columbus_day),
        Holiday("All Saints' Day", is_all_saints),
        Holiday("Independence of Cartagena", is_independence_cartagena),
        Holiday("Immaculate Conception", x -> is_december(x) && is_day(x, 8)),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

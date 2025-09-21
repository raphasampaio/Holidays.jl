module BoliviaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

function is_carnival_monday(x::TimeType)
    return x == carnival_monday(Dates.year(x))
end

function carnival_monday(year::Integer)
    return Christian.shrove_tuesday(year) - Dates.Day(1)
end

function is_carnival_tuesday(x::TimeType)
    return x == carnival_tuesday(Dates.year(x))
end

function carnival_tuesday(year::Integer)
    return Christian.shrove_tuesday(year)
end

function is_aymara_new_year(x::TimeType)
    return is_june_21st(x)
end

function is_plurinational_state_foundation_day(x::TimeType)
    return is_january_22nd(x)
end

function is_national_dignity_day(x::TimeType)
    return is_october_17th(x)
end

function bolivia_observance_rule(holiday::Holiday, x::TimeType)
    year = Dates.year(x)

    # Observance rules didn't exist before 1977
    if year < 1977
        return false
    end

    # Special cases for Labor Day observances
    if holiday.handler == is_may_1st
        # 2012: observed on Monday April 30 instead of Tuesday May 1
        if year == 2012 && x == Date(2012, 4, 30)
            return true
        end
        # 2014: observed on Friday May 2 when May 1 was Thursday
        if year == 2014 && x == Date(2014, 5, 2)
            return true
        end
    end

    # All Souls' Day observance rules stopped after 2014
    if holiday.handler == Christian.is_all_souls_day && year > 2014
        return false
    end

    # Use next_monday_if_falls_on_sunday observance rule
    return next_monday_if_falls_on_sunday(holiday, x)
end

function Holidays.fetch_holidays(::Type{Holidays.Bolivia})
    return [
        Holiday("New Year's Day", is_january_1st, observed = bolivia_observance_rule),
        Holiday(
            "Plurinational State Foundation Day",
            is_plurinational_state_foundation_day,
            start_year = 2010,
            observed = bolivia_observance_rule,
        ),
        Holiday("Carnival", is_carnival_monday),
        Holiday("Carnival", is_carnival_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labor Day", is_may_1st, observed = bolivia_observance_rule),
        Holiday("Corpus Christi", Christian.is_corpus_christi),
        Holiday("Aymara New Year", is_aymara_new_year, start_year = 2009, observed = bolivia_observance_rule),
        Holiday("Independence Day", is_august_6th, observed = bolivia_observance_rule),
        Holiday("All Saints' Day", Christian.is_all_saints_day, start_year = 1985, end_year = 1988),
        Holiday("All Souls' Day", Christian.is_all_souls_day, start_year = 1989, observed = bolivia_observance_rule),
        Holiday("National Dignity Day", is_national_dignity_day, start_year = 2020),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = bolivia_observance_rule),
    ]
end

end

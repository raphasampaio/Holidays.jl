module ArgentinaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

# Generic helper for Argentina movable holidays (Law 23555, 1988+)
# Returns true only if the date doesn't move to Monday
function argentina_movable_handler(date::Date)
    day_of_week = Dates.dayofweek(date)
    # Only mark the date itself if it falls on Mon/Sat/Sun (doesn't move)
    return day_of_week in [Dates.Monday, Dates.Saturday, Dates.Sunday]
end

# Generic observed function for Argentina movable holidays (Law 23555, 1988+)
function argentina_movable_observed(target_month::Int, target_day::Int)
    return function(holiday::Holiday, x::TimeType)
        is_monday(x) || return false

        year = Dates.year(x)
        target_date = Date(year, target_month, target_day)
        day_of_week = Dates.dayofweek(target_date)

        # Tuesday/Wednesday -> previous Monday
        if day_of_week in [Dates.Tuesday, Dates.Wednesday]
            return Date(x) == target_date - Day(day_of_week - 1)
        # Thursday/Friday -> next Monday
        elseif day_of_week in [Dates.Thursday, Dates.Friday]
            return Date(x) == target_date + Day(8 - day_of_week)
        end

        return false
    end
end

# Helper for finding the Nth Monday of a month
function nth_monday_of_month(year::Integer, month::Integer, n::Integer)
    # Start with the first day of the month
    first_day = Date(year, month, 1)
    # Find the first Monday
    days_until_monday = (Dates.Monday - Dates.dayofweek(first_day) + 7) % 7
    first_monday = first_day + Day(days_until_monday)
    # Add (n-1) weeks to get the nth Monday
    return first_monday + Day(7 * (n - 1))
end

# Handlers for 3rd Monday of month
is_third_monday_of_june(x::TimeType) = x == nth_monday_of_month(Dates.year(x), 6, 3)
is_third_monday_of_august(x::TimeType) = x == nth_monday_of_month(Dates.year(x), 8, 3)
is_third_monday_of_october(x::TimeType) = x == nth_monday_of_month(Dates.year(x), 10, 3)

# Specific handlers for each movable holiday
is_april_2nd_movable(x::TimeType) = is_april_2nd(x) && argentina_movable_handler(Date(Dates.year(x), 4, 2))
is_june_10th_movable(x::TimeType) = is_june_10th(x) && argentina_movable_handler(Date(Dates.year(x), 6, 10))
is_june_20th_movable(x::TimeType) = is_june_20th(x) && argentina_movable_handler(Date(Dates.year(x), 6, 20))
is_august_17th_movable(x::TimeType) = is_august_17th(x) && argentina_movable_handler(Date(Dates.year(x), 8, 17))
is_october_12th_movable(x::TimeType) = is_october_12th(x) && argentina_movable_handler(Date(Dates.year(x), 10, 12))

# Specific observed functions for each movable holiday
argentina_observed_april_2 = argentina_movable_observed(4, 2)
argentina_observed_june_10 = argentina_movable_observed(6, 10)
argentina_observed_june_20 = argentina_movable_observed(6, 20)
argentina_observed_august_17 = argentina_movable_observed(8, 17)
argentina_observed_october_12 = argentina_movable_observed(10, 12)

function Holidays.fetch_holidays(::Type{Holidays.Argentina})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Epiphany", Christian.is_epiphany, end_year = 1976),
        Holiday("Carnival Monday", Christian.is_shrove_monday, end_year = 1976),
        Holiday("Carnival Monday", Christian.is_shrove_monday, start_year = 2011),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday, end_year = 1976),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday, start_year = 2011),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday, end_year = 1976),
        Holiday("Maundy Thursday", Christian.is_maundy_thursday, start_year = 2011),
        Holiday("Good Friday", Christian.is_good_friday, start_year = 1977),
        Holiday("National Day of Remembrance for Truth and Justice", is_march_24th, start_year = 2006),
        Holiday("War Veteran's Day", is_april_2nd_movable, start_year = 1993, end_year = 2006,
            observed = argentina_observed_april_2),
        Holiday("Veteran's Day and the Fallen in the Malvinas War", is_april_2nd, start_year = 2007),
        Holiday("Labor Day", is_may_1st),
        Holiday("Bicentenary of the May Revolution", is_may_24th, start_year = 2010, end_year = 2010),
        Holiday("May Revolution Day", is_may_25th),
        Holiday("Corpus Christi", Christian.is_corpus_christi, end_year = 1975),
        Holiday("Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector", is_april_2nd, start_year = 1983, end_year = 1983),
        Holiday("Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector", is_june_10th, start_year = 1984, end_year = 1987),
        Holiday("Day of Affirmation of Argentine Rights over the Malvinas, Islands and Antarctic Sector", is_june_10th_movable, start_year = 1988, end_year = 2000,
            observed = argentina_observed_june_10),
        Holiday("Pass to the Immortality of General Don Manuel Belgrano", is_june_20th, end_year = 1987),
        Holiday("Pass to the Immortality of General Don Manuel Belgrano", is_june_20th_movable, start_year = 1988, end_year = 1994,
            observed = argentina_observed_june_20),
        Holiday("Pass to the Immortality of General Don Manuel Belgrano", is_third_monday_of_june, start_year = 1995, end_year = 2010),
        Holiday("Pass to the Immortality of General Don Manuel Belgrano", is_june_20th, start_year = 2011),
        Holiday("Independence Day", is_july_9th),
        Holiday("Assumption Day", Christian.is_assumption_day, end_year = 1975),
        Holiday("Pass to the Immortality of General Don José de San Martín", is_august_17th, end_year = 1987),
        Holiday("Pass to the Immortality of General Don José de San Martín", is_august_17th_movable, start_year = 1988, end_year = 1994,
            observed = argentina_observed_august_17),
        Holiday("Pass to the Immortality of General Don José de San Martín", is_third_monday_of_august, start_year = 1995, end_year = 2016),
        Holiday("Pass to the Immortality of General Don José de San Martín", is_august_17th_movable, start_year = 2017,
            observed = argentina_observed_august_17),
        Holiday("Columbus Day", is_october_12th, end_year = 1975),
        Holiday("Columbus Day", is_october_12th, start_year = 1982, end_year = 1987),
        Holiday("Columbus Day", is_october_12th_movable, start_year = 1988, end_year = 2000,
            observed = argentina_observed_october_12),
        Holiday("Columbus Day", is_october_8th, start_year = 2001, end_year = 2001),
        Holiday("Columbus Day", is_october_14th, start_year = 2002, end_year = 2002),
        Holiday("Columbus Day", is_october_12th_movable, start_year = 2003, end_year = 2007,
            observed = argentina_observed_october_12),
        Holiday("Columbus Day", is_second_monday_of_october, start_year = 2008, end_year = 2016),
        Holiday("Columbus Day", is_october_12th_movable, start_year = 2017,
            observed = argentina_observed_october_12),
        Holiday("National Census Day 2010", is_october_27th, start_year = 2010, end_year = 2010),
        Holiday("All Saints' Day", Christian.is_all_saints_day, end_year = 1975),
        Holiday("Immaculate Conception", Christian.is_immaculate_conception, end_year = 1975),
        Holiday("Immaculate Conception", Christian.is_immaculate_conception, start_year = 1995),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end

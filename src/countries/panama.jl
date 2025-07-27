module PanamaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

function is_martyrs_day_observed(x::TimeType)
    year = Dates.year(x)

    # Martyrs' Day started in 1972
    if year < 1972
        return false
    end

    # Check if it's Martyrs' Day itself
    if is_january(x) && is_day(x, 9)
        return true
    end

    # Check if it's the observed date when January 9 falls on Sunday
    jan_9 = Date(year, 1, 9)
    if is_sunday(jan_9) && x == jan_9 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_labor_day_observed(x::TimeType)
    # Check if it's Labor Day itself
    if is_may(x) && is_day(x, 1)
        return true
    end

    # Check if it's the observed date when May 1 falls on Sunday
    may_1 = Date(Dates.year(x), 5, 1)
    if is_sunday(may_1) && x == may_1 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_separation_day_observed(x::TimeType)
    # Check if it's Separation Day itself
    if is_november(x) && is_day(x, 3)
        return true
    end

    # Check if it's the observed date when November 3 falls on Sunday
    nov_3 = Date(Dates.year(x), 11, 3)
    if is_sunday(nov_3) && x == nov_3 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_los_santos_uprising_day_observed(x::TimeType)
    # Check if it's Los Santos Uprising Day itself
    if is_november(x) && is_day(x, 10)
        return true
    end

    # Check if it's the observed date when November 10 falls on Sunday
    nov_10 = Date(Dates.year(x), 11, 10)
    if is_sunday(nov_10) && x == nov_10 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_colon_day_observed(x::TimeType)
    year = Dates.year(x)

    # Colon Day started in 2002
    if year < 2002
        return false
    end

    # Check if it's Colon Day itself
    if is_november(x) && is_day(x, 5)
        return true
    end

    # Check if it's the observed date when November 5 falls on Sunday
    nov_5 = Date(year, 11, 5)
    if is_sunday(nov_5) && x == nov_5 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_independence_day_observed(x::TimeType)
    year = Dates.year(x)

    # Check if it's Independence Day itself (November 28)
    if is_november(x) && is_day(x, 28)
        return true
    end

    # Observance rules may not have applied in early years like 1971
    # Let's check if this is before 1972 and skip observance
    if year < 1972
        return false
    end

    # Check if it's the observed date when November 28 falls on Sunday
    nov_28 = Date(year, 11, 28)
    if is_sunday(nov_28) && x == nov_28 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_mothers_day_observed(x::TimeType)
    # Check if it's Mother's Day itself
    if is_december(x) && is_day(x, 8)
        return true
    end

    # Check if it's the observed date when December 8 falls on Sunday
    dec_8 = Date(Dates.year(x), 12, 8)
    if is_sunday(dec_8) && x == dec_8 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_presidential_inauguration_day_observed(x::TimeType)
    year = Dates.year(x)

    # Presidential Inauguration Day occurs in specific years: 2014, 2019, 2024
    if year == 2014 || year == 2019 || year == 2024
        # Check if it's July 1st
        if is_july(x) && is_day(x, 1)
            return true
        end

        # Check if it's the observed date when July 1 falls on Sunday
        jul_1 = Date(year, 7, 1)
        if is_sunday(jul_1) && x == jul_1 + Dates.Day(1)  # Observed on Monday
            return true
        end
    end

    return false
end

function is_national_mourning_day_observed(x::TimeType)
    year = Dates.year(x)

    # National Mourning Day started in 2022
    if year < 2022
        return false
    end

    # Check if it's National Mourning Day itself (December 20)
    if is_december(x) && is_day(x, 20)
        return true
    end

    # Check if it's the observed date when December 20 falls on Sunday
    dec_20 = Date(year, 12, 20)
    if is_sunday(dec_20) && x == dec_20 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function is_christmas_day_observed(x::TimeType)
    # Check if it's Christmas Day itself
    if is_december(x) && is_day(x, 25)
        return true
    end

    # Check if it's the observed date when December 25 falls on Sunday
    dec_25 = Date(Dates.year(x), 12, 25)
    if is_sunday(dec_25) && x == dec_25 + Dates.Day(1)  # Observed on Monday
        return true
    end

    return false
end

function Holidays.fetch_holidays(::Type{Holidays.Panama})
    return [
        Holiday("New Year's Day", is_january_1st, observed = next_monday_if_falls_on_sunday),
        Holiday("Martyrs' Day", is_martyrs_day_observed),
        Holiday("Constitution Day", x -> (Dates.year(x) == 1970 || Dates.year(x) == 1971) && is_march(x) && is_day(x, 1)),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labor Day", is_labor_day_observed),
        Holiday("Presidential Inauguration Day", is_presidential_inauguration_day_observed),
        Holiday("Separation Day", is_separation_day_observed),
        Holiday("Colon Day", is_colon_day_observed),
        Holiday("Los Santos Uprising Day", is_los_santos_uprising_day_observed),
        Holiday("Independence Day", is_independence_day_observed),
        Holiday("Mother's Day", is_mothers_day_observed),
        Holiday("National Mourning Day", is_national_mourning_day_observed),
        Holiday("Christmas Day", is_christmas_day_observed),
    ]
end

end

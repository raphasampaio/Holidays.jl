module PanamaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

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

function is_presidential_inauguration_day(x::TimeType)
    year = Dates.year(x)
    return (year == 2014 || year == 2019 || year == 2024) && is_july_1st(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Panama})
    return [
        Holiday("New Year's Day", is_january_1st, observed = next_monday_if_falls_on_sunday),
        Holiday("Martyrs' Day", is_january_9th, observed = next_monday_if_falls_on_sunday, start_year = 1972),
        Holiday("Constitution Day", x -> (Dates.year(x) == 1970 || Dates.year(x) == 1971) && is_march(x) && is_day(x, 1)),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labor Day", is_may_1st, observed = next_monday_if_falls_on_sunday),
        Holiday("Presidential Inauguration Day", is_presidential_inauguration_day, observed = next_monday_if_falls_on_sunday, start_year = 2014),
        Holiday("Separation Day", is_november_3rd, observed = next_monday_if_falls_on_sunday),
        Holiday("Colon Day", is_november_5th, observed = next_monday_if_falls_on_sunday, start_year = 2002),
        Holiday("Los Santos Uprising Day", is_november_10th, observed = next_monday_if_falls_on_sunday),
        Holiday("Independence Day", is_independence_day_observed),
        Holiday("Mother's Day", is_december_8th, observed = next_monday_if_falls_on_sunday),
        Holiday("National Mourning Day", is_december_20th, observed = next_monday_if_falls_on_sunday, start_year = 2022),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = next_monday_if_falls_on_sunday),
    ]
end

end

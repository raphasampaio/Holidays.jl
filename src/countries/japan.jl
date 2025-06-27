module JapanHolidays

using Dates
using Holidays

include("../dates.jl")

const Gregorian = Holidays.Gregorian

const Japan = Holidays.Japan

function is_coming_of_age_day(x::TimeType)
    return Dates.year(x) >= 2000 && is_january(x) && is_second_monday_of_month(x)
end

function is_national_foundation_day(x::TimeType)
    return is_february(x) && Dates.day(x) == 11
end

function is_emperors_birthday(x::TimeType)
    # Current Emperor's birthday (Emperor Naruhito, born February 23, 1960)
    return Dates.year(x) >= 2020 && is_february(x) && Dates.day(x) == 23
end

function is_vernal_equinox_day(x::TimeType)
    # Approximately March 20/21 - using March 20 as approximation
    return is_march(x) && Dates.day(x) == 20
end

function is_golden_week_start(x::TimeType)
    return is_april(x) && Dates.day(x) == 29
end

function is_constitution_memorial_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 3
end

function is_greenery_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 4
end

function is_childrens_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 5
end

function is_marine_day(x::TimeType)
    # Third Monday of July
    return Dates.year(x) >= 2003 && is_july(x) && is_third_monday_of_month(x)
end

function is_mountain_day(x::TimeType)
    return Dates.year(x) >= 2016 && is_august(x) && Dates.day(x) == 11
end

function is_respect_for_the_aged_day(x::TimeType)
    # Third Monday of September
    return Dates.year(x) >= 2003 && is_september(x) && is_third_monday_of_month(x)
end

function is_autumnal_equinox_day(x::TimeType)
    # Approximately September 23 - using as approximation
    return is_september(x) && Dates.day(x) == 23
end

function is_sports_day(x::TimeType)
    return Dates.year(x) >= 2000 && is_october(x) && is_second_monday_of_month(x)
end

function is_culture_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 3
end

function is_labour_thanksgiving_day(x::TimeType)
    return is_november(x) && Dates.day(x) == 23
end

function Holidays.fetch_holidays(::Type{Japan})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Coming-of-Age Day", is_coming_of_age_day),
        Holiday("National Foundation Day", is_national_foundation_day),
        Holiday("Emperor's Birthday", is_emperors_birthday),
        Holiday("Vernal Equinox Day", is_vernal_equinox_day),
        Holiday("Showa Day", is_golden_week_start),
        Holiday("Constitution Memorial Day", is_constitution_memorial_day),
        Holiday("Greenery Day", is_greenery_day),
        Holiday("Children's Day", is_childrens_day),
        Holiday("Marine Day", is_marine_day),
        Holiday("Mountain Day", is_mountain_day),
        Holiday("Respect-for-the-Aged Day", is_respect_for_the_aged_day),
        Holiday("Autumnal Equinox Day", is_autumnal_equinox_day),
        Holiday("Sports Day", is_sports_day),
        Holiday("Culture Day", is_culture_day),
        Holiday("Labour Thanksgiving Day", is_labour_thanksgiving_day),
    ]
end

end

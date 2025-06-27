module Christian

using Dates

include("../dates.jl")

is_shrove_sunday(x::TimeType) = x == shrove_sunday(Dates.year(x))
function shrove_sunday(year::Integer)
    return easter(year) - Dates.Day(49)
end

is_shrove_monday(x::TimeType) = x == shrove_monday(Dates.year(x))
function shrove_monday(year::Integer)
    return easter(year) - Dates.Day(48)
end

is_shrove_tuesday(x::TimeType) = x == shrove_tuesday(Dates.year(x))
function shrove_tuesday(year::Integer)
    return easter(year) - Dates.Day(47)
end

is_ash_wednesday(x::TimeType) = x == ash_wednesday(Dates.year(x))
function ash_wednesday(year::Integer)
    return easter(year) - Dates.Day(46)
end

is_easter(x::TimeType) = x == easter(Dates.year(x))
function easter(year::Integer)
    g = year % 19
    c = div(year, 100)
    h = (c - div(c, 4) - div(8 * c + 13, 25) + 19 * g + 15) % 30
    i = h - div(h, 28) * (1 - div(h, 28) * div(29, h + 1) * div(21 - g, 11))
    j = (year + div(year, 4) + i + 2 - c + div(c, 4)) % 7
    p = i - j
    day = 1 + (p + 27 + div(p + 6, 40)) % 31
    month = 3 + div(p + 26, 30)

    return Date(year, month, day)
end

is_good_friday(x::TimeType) = x == good_friday(Dates.year(x))
function good_friday(year::Integer)
    return easter(year) - Dates.Day(2)
end

is_holy_saturday(x::TimeType) = x == holy_saturday(Dates.year(x))
function holy_saturday(year::Integer)
    return easter(year) - Dates.Day(1)
end

is_easter_monday(x::TimeType) = x == easter_monday(Dates.year(x))
function easter_monday(year::Integer)
    return easter(year) + Dates.Day(1)
end

is_chorus_christi(x::TimeType) = x == chorus_christi(Dates.year(x))
function chorus_christi(year::Integer)
    return easter(year) + Dates.Day(60)
end

is_ascension_day(x::TimeType) = x == ascension_day(Dates.year(x))
function ascension_day(year::Integer)
    return easter(year) + Dates.Day(39)
end

is_whit_monday(x::TimeType) = x == whit_monday(Dates.year(x))
function whit_monday(year::Integer)
    return easter(year) + Dates.Day(50)
end

is_whit_sunday(x::TimeType) = x == whit_sunday(Dates.year(x))
function whit_sunday(year::Integer)
    return easter(year) + Dates.Day(49)
end

is_assumption_day(x::TimeType) = x == assumption_day(Dates.year(x))
function assumption_day(year::Integer)
    return Date(year, 8, 15)
end

is_all_saints_day(x::TimeType) = x == all_saints_day(Dates.year(x))
function all_saints_day(year::Integer)
    return Date(year, 11, 1)
end

is_all_souls_day(x::TimeType) = x == all_souls_day(Dates.year(x))
function all_souls_day(year::Integer)
    return Date(year, 11, 2)
end

is_advent_sunday(x::TimeType) = x == advent_sunday(Dates.year(x))
function advent_sunday(year::Integer)
    christmas = christmas_day(year)

    # find the fourth Sunday before Christmas
    first_advent = christmas - Dates.Day(21)

    # adjust backward to the nearest Sunday
    day_of_week = dayofweek(first_advent)
    return first_advent - Dates.Day(day_of_week % 7)
end

is_christmas_eve(x::TimeType) = x == christmas_eve(Dates.year(x))
function christmas_eve(year::Integer)
    return Date(year, 12, 24)
end

is_christmas_day(x::TimeType) = x == christmas_day(Dates.year(x))
function christmas_day(year::Integer)
    return Date(year, 12, 25)
end

is_boxing_day(x::TimeType) = x == boxing_day(Dates.year(x))
function boxing_day(year::Integer)
    return Date(year, 12, 26)
end

 is_st_stephens_day(x::TimeType) = x == st_stephens_day(Dates.year(x))
function st_stephens_day(year::Integer)
    return Date(year, 12, 26)
end

end

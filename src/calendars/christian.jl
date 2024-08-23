module Christian

using Dates

is_shrove_sunday(date::Date) = date == shrove_sunday(Dates.year(date))
function shrove_sunday(year::Integer)::Date
    return easter(year) - Dates.Day(49)
end

is_shrove_monday(date::Date) = date == shrove_monday(Dates.year(date))
function shrove_monday(year::Integer)::Date
    return easter(year) - Dates.Day(48)
end

is_shrove_tuesday(date::Date) = date == shrove_tuesday(Dates.year(date))
function shrove_tuesday(year::Integer)::Date
    return easter(year) - Dates.Day(47)
end

is_ash_wednesday(date::Date) = date == ash_wednesday(Dates.year(date))
function ash_wednesday(year::Integer)::Date
    return easter(year) - Dates.Day(46)
end

is_easter(date::Date) = date == easter(Dates.year(date))
function easter(year::Integer)::Date
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

is_good_friday(date::Date) = date == good_friday(Dates.year(date))
function good_friday(year::Integer)::Date
    return easter(year) - Dates.Day(2)
end

is_easter_monday(date::Date) = date == easter_monday(Dates.year(date))
function easter_monday(year::Integer)::Date
    return easter(year) + Dates.Day(1)
end

is_chorus_christi(date::Date) = date == chorus_christi(Dates.year(date))
function chorus_christi(year::Integer)::Date
    return easter(year) + Dates.Day(60)
end

is_ascension_day(date::Date) = date == ascension_day(Dates.year(date))
function ascension_day(year::Integer)::Date
    return easter(year) + Dates.Day(39)
end

is_whit_monday(date::Date) = date == whit_monday(Dates.year(date))
function whit_monday(year::Integer)::Date
    return easter(year) + Dates.Day(50)
end

is_assumption_day(date::Date) = date == assumption_day(Dates.year(date))
function assumption_day(year::Integer)::Date
    return Date(year, 8, 15)
end

is_all_saints_day(date::Date) = date == all_saints_day(Dates.year(date))
function all_saints_day(year::Integer)::Date
    return Date(year, 11, 1)
end

is_all_souls_day(date::Date) = date == all_souls_day(Dates.year(date))
function all_souls_day(year::Integer)::Date
    return Date(year, 11, 2)
end

is_advent_sunday(date::Date) = date == advent_sunday(Dates.year(date))
function advent_sunday(year::Integer)::Date
    christmas = christmas_day(year)

    # find the fourth Sunday before Christmas
    first_advent = christmas - Dates.Day(21)

    # adjust backward to the nearest Sunday
    day_of_week = dayofweek(first_advent)
    return first_advent - Dates.Day(day_of_week % 7)
end

is_christmas_day(date::Date) = date == christmas_day(Dates.year(date))
function christmas_day(year::Integer)::Date
    return Date(year, 12, 25)
end

is_boxing_day(date::Date) = date == boxing_day(Dates.year(date))
function boxing_day(year::Integer)::Date
    return Date(year, 12, 26)
end

end

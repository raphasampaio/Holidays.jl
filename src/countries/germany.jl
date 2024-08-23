function is_holiday(::Type{Country.Germany}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # New Year's Day
    if month == Dates.Jan && day == 1
        return true
    end

    # Good Friday
    if Christian.is_good_friday(date)
        return true
    end

    # Easter Monday
    if Christian.is_easter_monday(date)
        return true
    end

    # Labour Day
    if month == Dates.May && day == 1
        return true
    end

    # Ascension Day
    if Christian.is_ascension_day(date)
        return true
    end

    # Whit Monday
    if Christian.is_whit_monday(date)
        return true
    end

    # German Unity Day
    if month == Dates.Oct && day == 3
        return true
    end

    # Christmas Day
    if Christian.is_christmas_day(date)
        return true
    end

    # Second Day of Christmas
    if Christian.is_boxing_day(date)
        return true
    end

    return false
end

function is_holiday(::Country.Germany{Location.BadenWurttemberg}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Epiphany
    if month == Dates.Jan && day == 6
        return true
    end

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # All Saints' Day
    if Christian.is_all_saints_day(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Bavaria}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Epiphany
    if month == Dates.Jan && day == 6
        return true
    end

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # Assumption Day
    if Christian.is_assumption_day(date)
        return true
    end

    # All Saints' Day
    if Christian.is_all_saints_day(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Berlin}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # International Women's Day
    if month == Dates.Mar && day == 8
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Brandenburg}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Bremen}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Hamburg}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Hesse}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.MecklenburgVorpommern}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # International Women's Day
    if month == Dates.Mar && day == 8
        return true
    end

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.LowerSaxony}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.NorthRhineWestphalia}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # All Saints' Day
    if Christian.is_all_saints_day(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.RhinelandPalatinate}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # All Saints' Day
    if Christian.is_all_saints_day(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Saarland}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # Assumption Day
    if Christian.is_assumption_day(date)
        return true
    end

    # All Saints' Day
    if Christian.is_all_saints_day(date)
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Saxony}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    # Repentance and Prayer Day
    if date == (Christian.advent_sunday(Dates.year(date)) - Dates.Day(11))
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.SaxonyAnhalt}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Epiphany
    if month == Dates.Jan && day == 6
        return true
    end

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.SchleswigHolstein}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

function is_holiday(::Country.Germany{Location.Thuringia}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # World Children's Day
    if month == Dates.Sep && day == 20
        return true
    end

    # Reformation Day
    if month == Dates.Oct && day == 31
        return true
    end

    return is_holiday(Country.Germany, date)
end

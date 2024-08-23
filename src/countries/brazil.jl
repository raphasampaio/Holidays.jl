function is_holiday(::Type{Country.Brazil}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    if month == Dates.Jan && day == 1
        return true
    end

    if Christian.is_shrove_monday(date)
        return true
    end

    if Christian.is_shrove_tuesday(date)
        return true
    end

    if Christian.is_ash_wednesday(date)
        return true
    end

    if Christian.is_good_friday(date)
        return true
    end

    if month == Dates.Apr && day == 21
        return true
    end

    if month == Dates.May && day == 1
        return true
    end

    if Christian.is_chorus_christi(date)
        return true
    end

    if month == Dates.Sep && day == 7
        return true
    end

    if month == Dates.Oct && day == 12
        return true
    end

    if Christian.is_all_souls_day(date)
        return true
    end

    if month == Dates.Nov && day == 15
        return true
    end

    if month == Dates.Nov && day == 20
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(::Country.Brazil{Location.RioDeJaneiro}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    if month == Dates.Apr && day == 23
        return true
    end

    return is_holiday(Country.Brazil, date)
end

is_holiday(::Country.Brazil, date::Date) = is_holiday(Country.Brazil, date)
function is_holiday(::Type{Country.Brazil}, date::Date)
    day = Dates.day(date)
    month = Dates.month(date)

    if is_new_years_day(date)
        return true
    end

    if Christian.is_good_friday(date)
        return true
    end

    if Christian.is_easter_sunday(date)
        return true
    end

    if is_labor_day(Brazil, date)
        return true
    end

    if is_independence_day(Brazil, date)
        return true
    end

    # Our Lady of Aparecida
    if month == 10 && day == 12
        return true
    end

    if Christian.is_all_souls_day(date)
        return true
    end

    # Proclamation of the Republic
    if month == 11 && day == 15
        return true
    end

    # Black Awareness Day
    if month == 11 && day == 20
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(country::Country.Brazil{Location.RioDeJaneiro}, date::Date)
    if is_holiday(Country.Brazil, date)
        return true
    end

    return false
end

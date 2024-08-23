is_sham_ennessim(date::Date) = date == sham_ennessim(Dates.year(date))
function sham_ennessim(year::Integer)::Date
    return Christian.easter(year) + Dates.Day(1)
end

function is_holiday(::Type{Country.Egypt}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Christmas Day
    if month == Dates.Jan && day == 7
        return true
    end

    # Revolution Day 2011 National Police Day
    if month == Dates.Jan && day == 25
        return true
    end

    # Sinai Liberation Day
    if month == Dates.Apr && day == 25
        return true
    end

    # Sham El Nessim
    if is_sham_ennessim(date)
        return true
    end

    # Labour Day
    if month == Dates.May && day == 1
        return true
    end

    # 30 June Day
    if month == Dates.Jun && day == 30
        return true
    end

    # Revolution Day
    if month == Dates.Jul && day == 23
        return true
    end

    # Armed Forces Day
    if month == Dates.Oct && day == 6
        return true
    end

    return false
end

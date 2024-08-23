function is_holiday(::Type{Country.UnitedStates}, date::Date)
    day, month = Dates.day(date), Dates.month(date)
    day_of_week = Dates.dayofweek(date)
    day_of_week_of_month = Dates.dayofweekofmonth(date)

    if month == Dates.Jan && day == 1
        return true
    end

    if month == Dates.Jan && day_of_week_of_month == 3 && day_of_week == Dates.Mon
        return true
    end

    if month == Dates.Sep && day_of_week_of_month == 1 && day_of_week == Dates.Mon
        return true
    end

    if month == Dates.Jul && day == 4
        return true
    end

    if month == Dates.Nov && day_of_week_of_month == 4 && day_of_week == Dates.Thu
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(::Country.UnitedStates{Location.NewYork}, date::Date)
    if is_holiday(Country.UnitedStates, date)
        return true
    end

    day, month = Dates.day(date), Dates.month(date)

    return false
end

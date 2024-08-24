function is_holiday(::Type{UnitedStates}, date::Date)::Bool
    day, month, year = Dates.day(date), Dates.month(date), Dates.year(date)
    day_of_week = Dates.dayofweek(date)
    day_of_week_of_month = Dates.dayofweekofmonth(date)
    days_of_week_in_month = Dates.daysofweekinmonth(date)

    # New Year's Day
    if month == Dates.Jan && day == 1
        return true
    end

    # Birthday of Martin Luther King, Jr.
    if month == Dates.Jan && day_of_week_of_month == 3 && day_of_week == Dates.Mon
        return true
    end

    # Memorial Day
    if month == Dates.May &&
       day_of_week == Dates.Mon &&
       day_of_week_of_month == days_of_week_in_month
        return true
    end

    # Juneteenth National Independence Day
    if year >= 2021 && month == Dates.Jun && day == 19
        return true
    end

    # Independence Day 
    if year >= 1871 && month == Dates.Jul && day == 4
        return true
    end

    # Labor Day
    if year >= 1894 && month == Dates.Sep && day_of_week_of_month == 1 && day_of_week == Dates.Mon
        return true
    end

    # Columbus Day
    if month == Dates.Oct && day_of_week_of_month == 2 && day_of_week == Dates.Mon
        return true
    end

    # Veterans Day
    if month == Dates.Nov && day == 11
        return true
    end

    # Thanksgiving Day
    if year >= 1871 && month == Dates.Nov && day_of_week_of_month == 4 && day_of_week == Dates.Thu
        return true
    end

    # Christmas Day
    if year >= 1871 && Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(::UnitedStates{Location.NewYork}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(UnitedStates, date)
end

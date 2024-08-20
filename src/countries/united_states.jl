struct UnitedStates <: AbstractCountry end

function is_labor_day(::UnitedStates, date::Date)::Bool
    day_of_week = Dates.dayofweek(date)
    day_of_week_of_month = Dates.dayofweekofmonth(date)
    month = Dates.month(date)

    return day_of_week == Dates.Monday &&
           day_of_week_of_month == 1 &&
           month == Dates.September
end

function is_independence_day(::UnitedStates, date::Date)::Bool
    day = Dates.day(date)
    month = Dates.month(date)

    return month == 7 && day == 4
end

function is_thanksgiving(date::Date)::Bool
    day_of_week = Dates.dayofweek(date)
    day_of_week_of_month = Dates.dayofweekofmonth(date)
    month = Dates.month(date)

    return day_of_week == Dates.Thursday &&
           day_of_week_of_month == 4 &&
           month == Dates.November
end

function is_holiday(country::UnitedStates, date::Date)::Bool
    if is_new_years_day(date)
        return true
    end

    if is_independence_day(country, date)
        return true
    end

    if is_labor_day(country, date)
        return true
    end

    if is_thanksgiving(date)
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false

end

struct Brazil <: AbstractCountry end

function is_holiday(country::Brazil, date::Date)::Bool
    if is_new_years_day(date)
        return true
    end

    if is_christmas_day(date)
        return true
    end

    return false
end

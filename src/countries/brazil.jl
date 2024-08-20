struct Brazil <: AbstractCountry end

function is_independence_day(::Brazil, date::Date)::Bool
    return Dates.day(date) == 7 && Dates.month(date) == Dates.Sep
end

function is_holiday(country::Brazil, date::Date)::Bool
    day = Dates.day(date)
    month = Dates.month(date)

    if is_new_years_day(date)
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

    # Tiradentes Day
    if month == Dates.Apr && day == 21
        return true
    end

    if is_labor_day(country, date)
        return true
    end

    if Christian.is_chorus_christi(date)
        return true
    end

    if is_independence_day(country, date)
        return true
    end

    # Nossa Senhora Aparecida
    if month == Dates.Oct && day == 12
        return true
    end

    if Christian.is_all_souls_day(date)
        return true
    end

    # Proclamação da República
    if month == Dates.Nov && day == 15
        return true
    end

    # Dia Nacional de Zumbi e da Consciência Negra
    if month == Dates.Nov && day == 20
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

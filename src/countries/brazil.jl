is_holiday(::Country.Brazil, date::Date) = is_holiday(Country.Brazil, date)
function is_holiday(::Type{Country.Brazil}, date::Date)
    day = Dates.day(date)
    month = Dates.month(date)

    # Ano Novo
    if is_new_years_day(date)
        return true
    end

    # Carnaval
    if Christian.is_shrove_monday(date)
        return true
    end

    # Carnaval
    if Christian.is_shrove_tuesday(date)
        return true
    end

    # Quarta de Cinzas
    if Christian.is_ash_wednesday(date)
        return true
    end

    # Sexta-feira Santa
    if Christian.is_good_friday(date)
        return true
    end

    # Tiradentes Day
    if month == Dates.Apr && day == 21
        return true
    end

    # Dia do Trabalhador
    if month == Dates.May && day == 1
        return true
    end

    # Corpus Christi
    if Christian.is_chorus_christi(date)
        return true
    end

    # Dia da Independência
    if month == Dates.Sep && day == 7
        return true
    end

    # Nossa Senhora Aparecida
    if month == Dates.Oct && day == 12
        return true
    end

    # Finados
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

    # Natal
    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(country::Country.Brazil{Location.RioDeJaneiro}, date::Date)
    if is_holiday(Country.Brazil, date)
        return true
    end

    if month == Dates.Jan && day == 20
        return true
    end

    return false
end

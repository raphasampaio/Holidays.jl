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

function is_holiday(::Country.Brazil{Location.Acre}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Alagoas}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    # São João
    if month == Dates.Jun && day == 24
        return true
    end

    # São Pedro
    if month == Dates.Jun && day == 29
        return true
    end

    # Emancipação política (Data Magna)
    if month == Dates.Sep && day == 16
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Amapa}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Amazonas}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Bahia}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Brasilia}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Ceara}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.EspiritoSanto}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Goias}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Maranhao}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MatoGrosso}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MatoGrossoDoSul}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MinasGerais}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Para}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Paraiba}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Parana}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Pernambuco}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Piaui}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioDeJaneiro}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    if month == Dates.Apr && day == 23
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioGrandeDoNorte}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioGrandeDoSul}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Rondonia}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Roraima}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.SantaCatarina}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.SaoPaulo}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Sergipe}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Tocantins}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

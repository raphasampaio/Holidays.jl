function is_holiday(::Type{Country.Brazil}, date::Date)::Bool
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

function is_holiday(::Country.Brazil{Location.Acre}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia do evangélico
    if month == Dates.Jan && day == 23
        return true
    end

    # Alusivo ao Dia Internacional da Mulher
    if month == Dates.Mar && day == 8
        return true
    end

    # Aniversário do estado (Data Magna)
    if month == Dates.Jun && day == 15
        return true
    end

    # Dia da Amazônia
    if month == Dates.Sep && day == 5
        return true
    end

    # Assinatura do Tratado de Petrópolis
    if month == Dates.Nov && day == 17
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Alagoas}, date::Date)::Bool
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

function is_holiday(::Country.Brazil{Location.Amapa}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia de São José
    if month == Dates.Mar && day == 19
        return true
    end

    # Criação do Território Federal
    if month == Dates.Sep && day == 13
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Amazonas}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Elevação do Amazonas à categoria de província
    if month == Dates.Sep && day == 5
        return true
    end

    # Nossa Senhora da Conceição
    if month == Dates.Dec && day == 8
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Bahia}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Independência da Bahia
    if month == Dates.Jul && day == 2
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Brasilia}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Fundação de Brasília
    if month == Dates.Apr && day == 21
        return true
    end

    # Dia do evangélico
    if month == Dates.Nov && day == 30
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Ceara}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia de São José
    if month == Dates.Mar && day == 19
        return true
    end

    # Abolição da escravidão no Ceará
    if month == Dates.Mar && day == 25
        return true
    end

    # Dia de Nossa Senhora da Assunção
    if month == Dates.Aug && day == 15
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.EspiritoSanto}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia de Nossa Senhora da Penha
    if date == (Christian.easter(Dates.year(date)) + Dates.Day(8))
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Goias}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia da Nossa Senhora Auxiliadora
    if month == Dates.May && day == 24
        return true
    end

    # Dia da Nossa Senhora de Sant'Anna
    if month == Dates.Jul && day == 26
        return true
    end

    # Pedra fundamental de Goiânia
    if month == Dates.Oct && day == 24
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Maranhao}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Adesão do Maranhão à independência do Brasil
    if month == Dates.Jul && day == 28
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MatoGrosso}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MatoGrossoDoSul}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Criação do estado
    if month == Dates.Oct && day == 11
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.MinasGerais}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Tiradentes
    if month == Dates.Apr && day == 21
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Para}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Adesão do Pará à independência do Brasil
    if month == Dates.Aug && day == 15
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Paraiba}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Nossa Senhora das Neves
    if month == Dates.Aug && day == 5
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Parana}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia de Nossa Senhora do Rocio
    if month == Dates.Nov && day == 15
        return true
    end

    # Emancipação política do estado do Paraná
    if month == Dates.Dec && day == 19
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Pernambuco}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Revolução Pernambucana de 1817
    if month == Dates.Mar && day == 6
        return true
    end

    # Festa de São João
    if month == Dates.Jun && day == 24
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Piaui}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia do Piauí
    if month == Dates.Oct && day == 19
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioDeJaneiro}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    if month == Dates.Apr && day == 23
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioGrandeDoNorte}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia do Rio Grande do Norte
    if month == Dates.Aug && day == 7
        return true
    end

    # Mártires de Cunhaú e Uruaçu
    if month == Dates.Oct && day == 3
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.RioGrandeDoSul}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia do Gaúcho
    if month == Dates.Sep && day == 20
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Rondonia}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Criação do estado
    if month == Dates.Jan && day == 4
        return true
    end

    # Dia do evangélico
    if month == Dates.Jun && day == 18
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Roraima}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Criação do estado
    if month == Dates.Oct && day == 5
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.SantaCatarina}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Dia de Santa Catarina
    if month == Dates.Aug && day == 11
        return true
    end

    # Dia de Santa Catarina de Alexandria
    if month == Dates.Nov && day == 25
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.SaoPaulo}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Revolução Constitucionalista de 1932
    if month == Dates.Jul && day == 9
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Sergipe}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Emancipação política de Sergipe
    if month == Dates.Jul && day == 8
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function is_holiday(::Country.Brazil{Location.Tocantins}, date::Date)::Bool
    day, month = Dates.day(date), Dates.month(date)

    # Criação do estado
    if month == Dates.Oct && day == 5
        return true
    end

    # Autonomia do Estado
    if month == Dates.Mar && day == 18
        return true
    end

    # Nossa Senhora da Natividade
    if month == Dates.Sep && day == 8
        return true
    end

    return is_holiday(Country.Brazil, date)
end

function fetch_holidays(::Type{Brazil})
    return [
        Holiday("Confraternização Universal", Gregorian.is_new_years_day),
        Holiday("Segunda Feira de Carnaval", Christian.is_shrove_monday),
        Holiday("Terça Feira de Carnaval", Christian.is_shrove_tuesday),
        Holiday("Quarta Feira de Cinzas", Christian.is_ash_wednesday),
        Holiday("Sexta Feira Santa", Christian.is_good_friday),
        Holiday("Tiradentes", x -> Dates.month(x) == Dates.Apr && Dates.day(x) == 21),
        Holiday("Dia do Trabalhador", International.is_workers_day),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Independência do Brasil", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 7),
        Holiday("Nossa Senhora Aparecida", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 12),
        Holiday("Finados", Christian.is_all_souls_day),
        Holiday("Proclamação da República", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 15),
        Holiday("Dia Nacional de Zumbi e da Consciência Negra", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 20),
        Holiday("Natal", Christian.is_christmas_day),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Acre}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do evangélico", x -> Dates.month(x) == Dates.Jan && Dates.day(x) == 23),
        Holiday("Alusivo ao Dia Internacional da Mulher", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 8),
        Holiday("Aniversário do estado (Data Magna)", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 15),
        Holiday("Dia da Amazônia", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 5),
        Holiday("Assinatura do Tratado de Petrópolis", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 17),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Alagoas}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("São João", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 24),
        Holiday("São Pedro", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 29),
        Holiday("Emancipação política (Data Magna)", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 16),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Amapa}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de São José", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 19),
        Holiday("Criação do Território Federal", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 13),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Amazonas}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Elevação do Amazonas à categoria de província", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 5),
        Holiday("Nossa Senhora da Conceição", x -> Dates.month(x) == Dates.Dec && Dates.day(x) == 8),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Bahia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Independência da Bahia", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 2),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Brasilia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Fundação de Brasília", x -> Dates.month(x) == Dates.Apr && Dates.day(x) == 21),
        Holiday("Dia do evangélico", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 30),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Ceara}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de São José", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 19),
        Holiday("Abolição da escravidão no Ceará", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 25),
        Holiday("Dia de Nossa Senhora da Assunção", x -> Dates.month(x) == Dates.Aug && Dates.day(x) == 15),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.EspiritoSanto}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Nossa Senhora da Penha", x -> x == (Christian.easter(Dates.year(x)) + Dates.Day(8))),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Goias}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia da Nossa Senhora Auxiliadora", x -> Dates.month(x) == Dates.May && Dates.day(x) == 24),
        Holiday("Dia da Nossa Senhora de Sant'Anna", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 26),
        Holiday("Pedra fundamental de Goiânia", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 24),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Maranhao}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Adesão do Maranhão à independência do Brasil", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 28),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.MatoGrosso}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.MatoGrossoDoSul}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 11),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.MinasGerais}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Tiradentes", x -> Dates.month(x) == Dates.Apr && Dates.day(x) == 21),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Para}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Adesão do Pará à independência do Brasil", x -> Dates.month(x) == Dates.Aug && Dates.day(x) == 15),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Paraiba}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Nossa Senhora das Neves", x -> Dates.month(x) == Dates.Aug && Dates.day(x) == 5),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Parana}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Nossa Senhora do Rocio", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 15),
        Holiday("Emancipação política do estado do Paraná", x -> Dates.month(x) == Dates.Dec && Dates.day(x) == 19),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Pernambuco}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Revolução Pernambucana de 1817", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 6),
        Holiday("Festa de São João", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 24),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Piaui}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Piauí", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 19),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.RioDeJaneiro}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de São Jorge", x -> Dates.month(x) == Dates.Apr && Dates.day(x) == 23),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.RioGrandeDoNorte}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Rio Grande do Norte", x -> Dates.month(x) == Dates.Aug && Dates.day(x) == 7),
        Holiday("Mártires de Cunhaú e Uruaçu", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 3),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.RioGrandeDoSul}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Gaúcho", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 20),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Rondonia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", x -> Dates.month(x) == Dates.Jan && Dates.day(x) == 4),
        Holiday("Dia do evangélico", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 18),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Roraima}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 5),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.SantaCatarina}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Santa Catarina", x -> Dates.month(x) == Dates.Aug && Dates.day(x) == 11),
        Holiday("Dia de Santa Catarina de Alexandria", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 25),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.SaoPaulo}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Revolução Constitucionalista de 1932", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 9),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Sergipe}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Emancipação política de Sergipe", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 8),
    ]
end

function fetch_holidays(::Type{Brazil{Subdivision.Tocantins}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Autonomia do Estado", x -> Dates.month(x) == Dates.Mar && Dates.day(x) == 18),
        Holiday("Nossa Senhora da Natividade", x -> Dates.month(x) == Dates.Sep && Dates.day(x) == 8),
        Holiday("Criação do estado", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 5),
    ]
end

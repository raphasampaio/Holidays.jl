function fetch_holidays(::Type{Brazil})
    return [
        Holiday("Confraternização Universal", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 1),
        Holiday("Segunda Feira de Carnaval", Christian.is_shrove_monday),
        Holiday("Terça Feira de Carnaval", Christian.is_shrove_tuesday),
        Holiday("Quarta Feira de Cinzas", Christian.is_ash_wednesday),
        Holiday("Sexta Feira Santa", Christian.is_good_friday),
        Holiday("Tiradentes", (d) -> Dates.month(d) == Dates.Apr && Dates.day(d) == 21),
        Holiday("Dia do Trabalhador", (d) -> Dates.month(d) == Dates.May && Dates.day(d) == 1),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Independência do Brasil", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 7),
        Holiday("Nossa Senhora Aparecida", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 12),
        Holiday("Finados", Christian.is_all_souls_day),
        Holiday("Proclamação da República", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 15),
        Holiday("Dia Nacional de Zumbi e da Consciência Negra", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 20),
        Holiday("Natal", Christian.is_christmas_day),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Acre}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do evangélico", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 23),
        Holiday("Alusivo ao Dia Internacional da Mulher", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 8),
        Holiday("Aniversário do estado (Data Magna)", (d) -> Dates.month(d) == Dates.Jun && Dates.day(d) == 15),
        Holiday("Dia da Amazônia", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 5),
        Holiday("Assinatura do Tratado de Petrópolis", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 17),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Alagoas}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("São João", (d) -> Dates.month(d) == Dates.Jun && Dates.day(d) == 24),
        Holiday("São Pedro", (d) -> Dates.month(d) == Dates.Jun && Dates.day(d) == 29),
        Holiday("Emancipação política (Data Magna)", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 16),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Amapa}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de São José", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 19),
        Holiday("Criação do Território Federal", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 13),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Amazonas}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Elevação do Amazonas à categoria de província", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 5),
        Holiday("Nossa Senhora da Conceição", (d) -> Dates.month(d) == Dates.Dec && Dates.day(d) == 8),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Bahia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Independência da Bahia", (d) -> Dates.month(d) == Dates.Jul && Dates.day(d) == 2),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Brasilia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Fundação de Brasília", (d) -> Dates.month(d) == Dates.Apr && Dates.day(d) == 21),
        Holiday("Dia do evangélico", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 30),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Ceara}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de São José", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 19),
        Holiday("Abolição da escravidão no Ceará", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 25),
        Holiday("Dia de Nossa Senhora da Assunção", (d) -> Dates.month(d) == Dates.Aug && Dates.day(d) == 15),
    ]
end

function fetch_holidays(::Type{Brazil{Location.EspiritoSanto}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Nossa Senhora da Penha", (d) -> d == (Christian.easter(Dates.year(d)) + Dates.Day(8))),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Goias}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia da Nossa Senhora Auxiliadora", (d) -> Dates.month(d) == Dates.May && Dates.day(d) == 24),
        Holiday("Dia da Nossa Senhora de Sant'Anna", (d) -> Dates.month(d) == Dates.Jul && Dates.day(d) == 26),
        Holiday("Pedra fundamental de Goiânia", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 24),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Maranhao}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Adesão do Maranhão à independência do Brasil", (d) -> Dates.month(d) == Dates.Jul && Dates.day(d) == 28),
    ]
end

function fetch_holidays(::Type{Brazil{Location.MatoGrosso}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function fetch_holidays(::Type{Brazil{Location.MatoGrossoDoSul}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 11),
    ]
end

function fetch_holidays(::Type{Brazil{Location.MinasGerais}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Tiradentes", (d) -> Dates.month(d) == Dates.Apr && Dates.day(d) == 21),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Para}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Adesão do Pará à independência do Brasil", (d) -> Dates.month(d) == Dates.Aug && Dates.day(d) == 15),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Paraiba}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Nossa Senhora das Neves", (d) -> Dates.month(d) == Dates.Aug && Dates.day(d) == 5),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Parana}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Nossa Senhora do Rocio", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 15),
        Holiday("Emancipação política do estado do Paraná", (d) -> Dates.month(d) == Dates.Dec && Dates.day(d) == 19),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Pernambuco}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Revolução Pernambucana de 1817", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 6),
        Holiday("Festa de São João", (d) -> Dates.month(d) == Dates.Jun && Dates.day(d) == 24),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Piaui}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Piauí", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 19),
    ]
end

function fetch_holidays(::Type{Brazil{Location.RioDeJaneiro}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("xxx", (d) -> Dates.month(d) == Dates.Apr && Dates.day(d) == 23),
    ]
end

function fetch_holidays(::Type{Brazil{Location.RioGrandeDoNorte}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Rio Grande do Norte", (d) -> Dates.month(d) == Dates.Aug && Dates.day(d) == 7),
        Holiday("Mártires de Cunhaú e Uruaçu", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 3),
    ]
end

function fetch_holidays(::Type{Brazil{Location.RioGrandeDoSul}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia do Gaúcho", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 20),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Rondonia}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 4),
        Holiday("Dia do evangélico", (d) -> Dates.month(d) == Dates.Jun && Dates.day(d) == 18),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Roraima}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Criação do estado", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 5),
    ]
end

function fetch_holidays(::Type{Brazil{Location.SantaCatarina}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Dia de Santa Catarina", (d) -> Dates.month(d) == Dates.Aug && Dates.day(d) == 11),
        Holiday("Dia de Santa Catarina de Alexandria", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 25),
    ]
end

function fetch_holidays(::Type{Brazil{Location.SaoPaulo}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Revolução Constitucionalista de 1932", (d) -> Dates.month(d) == Dates.Jul && Dates.day(d) == 9),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Sergipe}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Emancipação política de Sergipe", (d) -> Dates.month(d) == Dates.Jul && Dates.day(d) == 8),
    ]
end

function fetch_holidays(::Type{Brazil{Location.Tocantins}})
    return [
        fetch_holidays(Brazil)...,
        Holiday("Autonomia do Estado", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 18),
        Holiday("Nossa Senhora da Natividade", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 8),
        Holiday("Criação do estado", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 5),
    ]
end

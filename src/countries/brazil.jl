module BrazilHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

const Brazil = Holidays.Brazil

function Holidays.fetch_holidays(::Type{Brazil})
    return [
        Holiday("Universal Fraternization Day", International.is_new_years_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Tiradentes' Day", x -> is_april(x) && is_day(x, 21)),
        Holiday("Worker's Day", International.is_workers_day),
        Holiday("Independence Day", x -> is_september(x) && is_day(x, 7)),
        Holiday("Our Lady of Aparecida", x -> Dates.year(x) >= 1980 && is_october(x) && is_day(x, 12)),
        Holiday("All Souls' Day", Christian.is_all_souls_day),
        Holiday("Republic Proclamation Day", x -> is_november(x) && is_day(x, 15)),
        Holiday("National Day of Zumbi and Black Awareness", x -> Dates.year(x) >= 2024 && is_november(x) && is_day(x, 20)),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Acre}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Alagoas}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Amapa}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Amazonas}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Bahia}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Brasilia}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Ceara}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.EspiritoSanto}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Goias}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Maranhao}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.MatoGrosso}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.MatoGrossoDoSul}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.MinasGerais}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Para}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Paraiba}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Parana}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Pernambuco}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Piaui}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.RioDeJaneiro}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.RioGrandeDoNorte}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.RioGrandeDoSul}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Rondonia}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Roraima}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.SantaCatarina}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.SaoPaulo}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Sergipe}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

function Holidays.fetch_holidays(::Type{Brazil{Subdivision.Tocantins}})
    return [
        fetch_holidays(Brazil)...,
    ]
end

end

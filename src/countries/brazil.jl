module BrazilHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

const Brazil = Holidays.Brazil

function Holidays.fetch_holidays(::Type{Brazil})
    return [
        Holiday("New Year's Day", is_january_1st),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Tiradentes' Day", is_april_21st),
        Holiday("Worker's Day", is_may_1st),
        Holiday("Independence Day", is_september_7th),
        Holiday("Our Lady of Aparecida", is_october_12th, start_year = 1980),
        Holiday("All Souls' Day", Christian.is_all_souls_day),
        Holiday("Republic Proclamation Day", is_november_15th),
        Holiday("National Day of Zumbi and Black Awareness", is_november_20th, start_year = 2024),
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

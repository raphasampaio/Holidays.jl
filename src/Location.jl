module Location

export AbstractLocation

abstract type AbstractLocation end

macro location(name)
    quote
        begin
            struct $(esc(name)) <: AbstractLocation end
        end
    end
end

# Brazil
@location Acre
@location Alagoas
@location Amapa
@location Amazonas
@location Bahia
@location Brasilia
@location Ceara
@location EspiritoSanto
@location Goias
@location Maranhao
@location MatoGrosso
@location MatoGrossoDoSul
@location MinasGerais
@location Para
@location Paraiba
@location Parana
@location Pernambuco
@location Piaui
@location RioDeJaneiro
@location RioGrandeDoNorte
@location RioGrandeDoSul
@location Rondonia
@location Roraima
@location SantaCatarina
@location SaoPaulo
@location Sergipe
@location Tocantins

# UnitedStates
@location Alabama
@location Alaska
@location Arizona
@location Arkansas
@location California
@location Colorado
@location Connecticut
@location Delaware
@location Florida
@location Georgia
@location Hawaii
@location Idaho
@location Illinois
@location Indiana
@location Iowa
@location Kansas
@location Kentucky
@location Louisiana
@location Maine
@location Maryland
@location Massachusetts
@location Michigan
@location Minnesota
@location Mississippi
@location Missouri
@location Montana
@location Nebraska
@location Nevada
@location NewHampshire
@location NewJersey
@location NewMexico
@location NewYork
@location NorthCarolina
@location NorthDakota
@location Ohio
@location Oklahoma
@location Oregon
@location Pennsylvania
@location RhodeIsland
@location SouthCarolina
@location SouthDakota
@location Tennessee
@location Texas
@location Utah
@location Vermont
@location Virginia
@location Washington
@location WestVirginia
@location Wisconsin
@location Wyoming

end

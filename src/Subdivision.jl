module Subdivision

abstract type AbstractSubdivision end

macro subdivision(name)
    quote
        begin
            struct $(esc(name)) <: AbstractSubdivision end
        end
    end
end

# Brazil
@subdivision Acre
@subdivision Alagoas
@subdivision Amapa
@subdivision Amazonas
@subdivision Bahia
@subdivision Brasilia
@subdivision Ceara
@subdivision EspiritoSanto
@subdivision Goias
@subdivision Maranhao
@subdivision MatoGrosso
@subdivision MatoGrossoDoSul
@subdivision MinasGerais
@subdivision Para
@subdivision Paraiba
@subdivision Parana
@subdivision Pernambuco
@subdivision Piaui
@subdivision RioDeJaneiro
@subdivision RioGrandeDoNorte
@subdivision RioGrandeDoSul
@subdivision Rondonia
@subdivision Roraima
@subdivision SantaCatarina
@subdivision SaoPaulo
@subdivision Sergipe
@subdivision Tocantins

# Germany
@subdivision BadenWurttemberg
@subdivision Bavaria
@subdivision Berlin
@subdivision Brandenburg
@subdivision Bremen
@subdivision Hamburg
@subdivision Hesse
@subdivision MecklenburgVorpommern
@subdivision LowerSaxony
@subdivision NorthRhineWestphalia
@subdivision RhinelandPalatinate
@subdivision Saarland
@subdivision Saxony
@subdivision SaxonyAnhalt
@subdivision SchleswigHolstein
@subdivision Thuringia

# UnitedStates
@subdivision Alabama
@subdivision Alaska
@subdivision Arizona
@subdivision Arkansas
@subdivision California
@subdivision Colorado
@subdivision Connecticut
@subdivision Delaware
@subdivision Florida
@subdivision Georgia
@subdivision Hawaii
@subdivision Idaho
@subdivision Illinois
@subdivision Indiana
@subdivision Iowa
@subdivision Kansas
@subdivision Kentucky
@subdivision Louisiana
@subdivision Maine
@subdivision Maryland
@subdivision Massachusetts
@subdivision Michigan
@subdivision Minnesota
@subdivision Mississippi
@subdivision Missouri
@subdivision Montana
@subdivision Nebraska
@subdivision Nevada
@subdivision NewHampshire
@subdivision NewJersey
@subdivision NewMexico
@subdivision NewYork
@subdivision NorthCarolina
@subdivision NorthDakota
@subdivision Ohio
@subdivision Oklahoma
@subdivision Oregon
@subdivision Pennsylvania
@subdivision RhodeIsland
@subdivision SouthCarolina
@subdivision SouthDakota
@subdivision Tennessee
@subdivision Texas
@subdivision Utah
@subdivision Vermont
@subdivision Virginia
@subdivision Washington
@subdivision WestVirginia
@subdivision Wisconsin
@subdivision Wyoming

end

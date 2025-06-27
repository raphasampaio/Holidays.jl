macro country(name)
    quote
        begin
            struct $(esc(name)){T <: Union{Nothing, Subdivision.AbstractSubdivision}} <: AbstractHolidayCalendar
                subdivision::T
                holidays::Vector{Holiday}

                function $(esc(name))(; subdivision::T = nothing) where {T <: Union{Nothing, Subdivision.AbstractSubdivision}}
                    if subdivision == nothing
                        return new{T}(subdivision, fetch_holidays($(esc(name))))
                    else
                        return new{T}(subdivision, fetch_holidays($(esc(name)){T}))
                    end
                end
            end
        end
    end
end

# @country Afghanistan
# @country Albania
# @country Algeria
# @country Andorra
# @country Angola
# @country AntiguaAndBarbuda
# @country Argentina
# @country Armenia
@country Australia
# @country Austria
# @country Azerbaijan
# @country TheBahamas
# @country Bahrain
# @country Bangladesh
# @country Barbados
# @country Belarus
# @country Belgium
# @country Belize
# @country Benin
# @country Bhutan
# @country Bolivia
# @country BosniaAndHerzegovina
# @country Botswana
@country Brazil
# @country Brunei
# @country Bulgaria
# @country BurkinaFaso
# @country Burundi
# @country CaboVerde
# @country Cambodia
# @country Cameroon
@country Canada
# @country CentralAfricanRepublic
# @country Chad
# @country Chile
# @country China
# @country Colombia
# @country Comoros
# @country DemocraticRepublicOfTheCongo
# @country RepublicOfTheCongo
# @country CostaRica
# @country CôteDIvoire
# @country Croatia
# @country Cuba
# @country Cyprus
# @country CzechRepublic
# @country Denmark
# @country Djibouti
# @country Dominica
# @country DominicanRepublic
# @country EastTimor
# @country Ecuador
@country Egypt
# @country ElSalvador
# @country EquatorialGuinea
# @country Eritrea
# @country Estonia
# @country Eswatini
# @country Ethiopia
# @country Fiji
# @country Finland
@country France
# @country Gabon
# @country TheGambia
# @country Georgia
@country Germany
# @country Ghana
# @country Greece
# @country Grenada
# @country Guatemala
# @country Guinea
# @country GuineaBissau
# @country Guyana
# @country Haiti
# @country Honduras
# @country Hungary
# @country Iceland
@country India
# @country Indonesia
# @country Iran
# @country Iraq
# @country Ireland
# @country Israel
@country Italy
# @country Jamaica
@country Japan
# @country Jordan
# @country Kazakhstan
# @country Kenya
# @country Kiribati
# @country NorthKorea
@country SouthKorea
# @country Kosovo
# @country Kuwait
# @country Kyrgyzstan
# @country Laos
# @country Latvia
# @country Lebanon
# @country Lesotho
# @country Liberia
# @country Libya
# @country Liechtenstein
# @country Lithuania
# @country Luxembourg
# @country Madagascar
# @country Malawi
# @country Malaysia
# @country Maldives
# @country Mali
# @country Malta
# @country MarshallIslands
# @country Mauritania
# @country Mauritius
@country Mexico
# @country Micronesia
# @country Moldova
# @country Monaco
# @country Mongolia
# @country Montenegro
# @country Morocco
# @country Mozambique
# @country Myanmar
# @country Namibia
# @country Nauru
# @country Nepal
@country Netherlands
# @country NewZealand
# @country Nicaragua
# @country Niger
# @country Nigeria
# @country NorthMacedonia
# @country Norway
# @country Oman
# @country Pakistan
# @country Palau
# @country Panama
# @country PapuaNewGuinea
# @country Paraguay
# @country Peru
# @country Philippines
# @country Poland
# @country Portugal
# @country Qatar
# @country Romania
@country Russia
# @country Rwanda
# @country SaintKittsAndNevis
# @country SaintLucia
# @country SaintVincentAndTheGrenadines
# @country Samoa
# @country SanMarino
# @country SaoTomeAndPrincipe
# @country SaudiArabia
# @country Senegal
# @country Serbia
# @country Seychelles
# @country SierraLeone
# @country Singapore
# @country Slovakia
# @country Slovenia
# @country SolomonIslands
# @country Somalia
# @country SouthAfrica
@country Spain
# @country SriLanka
# @country Sudan
# @country SouthSudan
# @country Suriname
# @country Sweden
# @country Switzerland
# @country Syria
# @country Taiwan
# @country Tajikistan
# @country Tanzania
# @country Thailand
# @country Togo
# @country Tonga
# @country TrinidadAndTobago
# @country Tunisia
# @country Turkey
# @country Turkmenistan
# @country Tuvalu
# @country Uganda
# @country Ukraine
# @country UnitedArabEmirates
@country UnitedKingdom
@country UnitedStates
# @country Uruguay
# @country Uzbekistan
# @country Vanuatu
# @country VaticanCity
# @country Venezuela
# @country Vietnam
# @country Yemen
# @country Zambia
# @country Zimbabwe

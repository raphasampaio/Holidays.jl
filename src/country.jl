macro country(name)
    quote
        begin
            struct $(esc(name)){S <: Union{Nothing, Subdivision.AbstractSubdivision}} <: AbstractHolidayCalendar
                subdivision::S
                holidays::Vector{Holiday}

                function $(esc(name))(; subdivision::S = nothing) where {S <: Union{Nothing, Subdivision.AbstractSubdivision}}
                    if subdivision == nothing
                        return new{S}(subdivision, fetch_holidays($(esc(name))))
                    else
                        CountryType = $(esc(name))
                        return new{S}(subdivision, fetch_holidays(CountryType{S}))
                    end
                end
            end
        end
    end
end

@country Afghanistan
@country AlandIslands
@country Albania
@country Algeria
@country AmericanSamoa
@country Andorra
@country Angola
@country Anguilla
@country Antarctica
@country AntiguaAndBarbuda
@country Argentina
@country Armenia
@country Aruba
@country Australia
@country Austria
@country Azerbaijan
@country Bahamas
@country Bahrain
@country Bangladesh
@country Barbados
@country Belarus
@country Belgium
@country Belize
@country Benin
@country Bermuda
@country Bhutan
@country Bolivia
@country Bonaire
@country BosniaAndHerzegovina
@country Botswana
@country BouvetIsland
@country Brazil
@country BritishIndianOceanTerritory
@country BritishVirginIslands
@country BruneiDarussalam
@country Bulgaria
@country BurkinaFaso
@country Burundi
@country CaboVerde
@country Cambodia
@country Cameroon
@country Canada
@country CaymanIslands
@country CentralAfricanRepublic
@country Chad
@country Chile
@country China
@country ChristmasIsland
@country CocosIslands
@country Colombia
@country Comoros
@country CookIslands
@country CostaRica
@country CoteDIvoire
@country Croatia
@country Cuba
@country Curacao
@country Cyprus
@country CzechRepublic
@country DemocraticRepublicOfTheCongo
@country Denmark
@country Djibouti
@country Dominica
@country DominicanRepublic
@country Ecuador
@country Egypt
@country ElSalvador
@country EquatorialGuinea
@country Eritrea
@country Estonia
@country Eswatini
@country Ethiopia
@country FalklandIslands
@country FaroeIslands
@country Fiji
@country Finland
@country France
@country FrenchGuiana
@country FrenchPolynesia
@country FrenchSouthernTerritories
@country Gabon
@country Gambia
@country Georgia
@country Germany
@country Ghana
@country Gibraltar
@country Greece
@country Greenland
@country Grenada
@country Guadeloupe
@country Guam
@country Guatemala
@country Guernsey
@country Guinea
@country GuineaBissau
@country Guyana
@country Haiti
@country HeardIslandAndMcdonaldIslands
@country Honduras
@country HongKong
@country Hungary
@country Iceland
@country India
@country Indonesia
@country Iran
@country Iraq
@country Ireland
@country IsleOfMan
@country Israel
@country Italy
@country Jamaica
@country Japan
@country Jersey
@country Jordan
@country Kazakhstan
@country Kenya
@country Kiribati
@country Kosovo
@country Kuwait
@country Kyrgyzstan
@country Laos
@country Latvia
@country Lebanon
@country Lesotho
@country Liberia
@country Libya
@country Liechtenstein
@country Lithuania
@country Luxembourg
@country Macao
@country Madagascar
@country Malawi
@country Malaysia
@country Maldives
@country Mali
@country Malta
@country MarshallIslands
@country Martinique
@country Mauritania
@country Mauritius
@country Mayotte
@country Mexico
@country Micronesia
@country Moldova
@country Monaco
@country Mongolia
@country Montenegro
@country Montserrat
@country Morocco
@country Mozambique
@country Myanmar
@country Namibia
@country Nauru
@country Nepal
@country Netherlands
@country NewCaledonia
@country NewZealand
@country Nicaragua
@country Niger
@country Nigeria
@country Niue
@country NorfolkIsland
@country NorthKorea
@country NorthMacedonia
@country NorthernMarianaIslands
@country Norway
@country Oman
@country Pakistan
@country Palau
@country Palestine
@country Panama
@country PapuaNewGuinea
@country Paraguay
@country Peru
@country Philippines
@country Pitcairn
@country Poland
@country Portugal
@country PuertoRico
@country Qatar
@country RepublicOfTheCongo
@country Reunion
@country Romania
@country Russia
@country Rwanda
@country SaintBarthelemy
@country SaintHelena
@country SaintKittsAndNevis
@country SaintLucia
@country SaintMartin
@country SaintPierreAndMiquelon
@country SaintVincentAndTheGrenadines
@country Samoa
@country SanMarino
@country SaoTomeAndPrincipe
@country SaudiArabia
@country Senegal
@country Serbia
@country Seychelles
@country SierraLeone
@country Singapore
@country SintMaarten
@country Slovakia
@country Slovenia
@country SolomonIslands
@country Somalia
@country SouthAfrica
@country SouthGeorgiaAndTheSouthSandwichIslands
@country SouthKorea
@country SouthSudan
@country Spain
@country SriLanka
@country Sudan
@country Suriname
@country Svalbard
@country Sweden
@country Switzerland
@country Syria
@country Taiwan
@country Tajikistan
@country Tanzania
@country Thailand
@country TimorLeste
@country Togo
@country Tokelau
@country Tonga
@country TrinidadAndTobago
@country Tunisia
@country Turkey
@country Turkmenistan
@country TurksAndCaicosIslands
@country Tuvalu
@country USVirginIslands
@country Uganda
@country Ukraine
@country UnitedArabEmirates
@country UnitedKingdom
@country UnitedStates
@country Uruguay
@country Uzbekistan
@country Vanuatu
@country VaticanCity
@country Venezuela
@country Vietnam
@country WallisAndFutuna
@country WesternSahara
@country Yemen
@country Zambia
@country Zimbabwe


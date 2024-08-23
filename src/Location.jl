module Location

export AbstractLocation

abstract type AbstractLocation end

struct Acre <: AbstractLocation end
struct Alagoas <: AbstractLocation end
struct Amapa <: AbstractLocation end
struct Amazonas <: AbstractLocation end
struct Bahia <: AbstractLocation end
struct Brasilia <: AbstractLocation end
struct Ceara <: AbstractLocation end
struct EspiritoSanto <: AbstractLocation end
struct Goias <: AbstractLocation end
struct Maranhao <: AbstractLocation end
struct MatoGrosso <: AbstractLocation end
struct MatoGrossodoSul <: AbstractLocation end
struct MinasGerais <: AbstractLocation end
struct Para <: AbstractLocation end
struct Paraiba <: AbstractLocation end
struct Parana <: AbstractLocation end
struct Pernambuco <: AbstractLocation end
struct Piaui <: AbstractLocation end
struct RiodeJaneiro <: AbstractLocation end
struct RioGrandedoNorte <: AbstractLocation end
struct RioGrandedoSul <: AbstractLocation end
struct Rondonia <: AbstractLocation end
struct Roraima <: AbstractLocation end
struct SantaCatarina <: AbstractLocation end
struct SaoPaulo <: AbstractLocation end
struct Sergipe <: AbstractLocation end
struct Tocantins <: AbstractLocation end

struct Alabama <: AbstractLocation end
struct Alaska <: AbstractLocation end
struct Arizona <: AbstractLocation end
struct Arkansas <: AbstractLocation end
struct California <: AbstractLocation end
struct Colorado <: AbstractLocation end
struct Connecticut <: AbstractLocation end
struct Delaware <: AbstractLocation end
struct Florida <: AbstractLocation end
struct Georgia <: AbstractLocation end
struct Hawaii <: AbstractLocation end
struct Idaho <: AbstractLocation end
struct Illinois <: AbstractLocation end
struct Indiana <: AbstractLocation end
struct Iowa <: AbstractLocation end
struct Kansas <: AbstractLocation end
struct Kentucky <: AbstractLocation end
struct Louisiana <: AbstractLocation end
struct Maine <: AbstractLocation end
struct Maryland <: AbstractLocation end
struct Massachusetts <: AbstractLocation end
struct Michigan <: AbstractLocation end
struct Minnesota <: AbstractLocation end
struct Mississippi <: AbstractLocation end
struct Missouri <: AbstractLocation end
struct Montana <: AbstractLocation end
struct Nebraska <: AbstractLocation end
struct Nevada <: AbstractLocation end
struct NewHampshire <: AbstractLocation end
struct NewJersey <: AbstractLocation end
struct NewMexico <: AbstractLocation end
struct NewYork <: AbstractLocation end
struct NorthCarolina <: AbstractLocation end
struct NorthDakota <: AbstractLocation end
struct Ohio <: AbstractLocation end
struct Oklahoma <: AbstractLocation end
struct Oregon <: AbstractLocation end
struct Pennsylvania <: AbstractLocation end
struct RhodeIsland <: AbstractLocation end
struct SouthCarolina <: AbstractLocation end
struct SouthDakota <: AbstractLocation end
struct Tennessee <: AbstractLocation end
struct Texas <: AbstractLocation end
struct Utah <: AbstractLocation end
struct Vermont <: AbstractLocation end
struct Virginia <: AbstractLocation end
struct Washington <: AbstractLocation end
struct WestVirginia <: AbstractLocation end
struct Wisconsin <: AbstractLocation end
struct Wyoming <: AbstractLocation end

end
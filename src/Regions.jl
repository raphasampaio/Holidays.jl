module Regions

abstract type Country end

abstract type Brazil <: Country end

abstract type BrazilBrasilia <: Brazil end

abstract type BrazilRioDeJaneiro <: Brazil end
abstract type BrazilRioDeJaneiroRioDeJaneiro <: BrazilRioDeJaneiro end

abstract type BrazilSaoPaulo <: Brazil end

abstract type UnitedStates <: Country end
abstract type UnitedStatesCalifornia <: UnitedStates end
abstract type UnitedStatesNewYork <: UnitedStates end
abstract type UnitedStatesWashington <: UnitedStates end

end

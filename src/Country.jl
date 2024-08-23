module Country

using ..Location

export AbstractCountry

abstract type AbstractCountry end

@kwdef struct Brazil{T<:Union{Nothing,Location.AbstractLocation}} <: AbstractCountry
    region::T = nothing
end

@kwdef struct UnitedStates{T<:Union{Nothing,Location.AbstractLocation}} <: AbstractCountry
    region::T = nothing
end

end

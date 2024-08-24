module Holidays

using Dates

export is_holiday,
    AbstractCountry,
    Location

include("Location.jl")
include("Country.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/germany.jl")
include("countries/egypt.jl")
include("countries/united_states.jl")

function is_holiday(::T, date::Date) where {T <: AbstractCountry}
    return is_holiday(T.name.wrapper, date)
end

end

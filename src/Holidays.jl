module Holidays

using Dates

export is_holiday, Country, Location

include("Location.jl")
include("Country.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/egypt.jl")
include("countries/united_states.jl")

function is_holiday(::T, date::Date) where {T <: Country.AbstractCountry}
    return is_holiday(T.name.wrapper, date)
end

end

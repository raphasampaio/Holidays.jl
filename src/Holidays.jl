module Holidays

using Dates

export
    is_holiday,
    Country,
    Subdivision

include("holiday.jl")
include("Subdivision.jl")
include("Country.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/germany.jl")
include("countries/united_states.jl")

function is_holiday(calendar::T, date::Date) where {T <: AbstractCountry}
    for holiday in calendar.holidays
        if date in holiday
            return true
        end
    end
    return false
end

end

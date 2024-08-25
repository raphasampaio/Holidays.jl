module Holidays

using Dates

export
    is_holiday,
    AbstractHolidayCalendar,
    AbstractCountryHolidayCalendar,
    Subdivision

include("Subdivision.jl")

include("abstract.jl")
include("holiday.jl")
include("country.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/germany.jl")
include("countries/united_states.jl")

end

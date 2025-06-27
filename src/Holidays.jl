module Holidays

using Dates

export
    is_holiday,
    fetch_holidays,
    Holiday,
    AbstractHolidayCalendar,
    Subdivision

include("Subdivision.jl")

include("calendar.jl")
include("holiday.jl")
include("country.jl")

include("calendars/christian.jl")
include("calendars/gregorian.jl")
include("calendars/international.jl")
include("calendars/islamic.jl")

include("countries/argentina.jl")
include("countries/australia.jl")
include("countries/brazil.jl")
include("countries/canada.jl")
include("countries/china.jl")
include("countries/egypt.jl")
include("countries/france.jl")
include("countries/germany.jl")
include("countries/india.jl")
include("countries/italy.jl")
include("countries/japan.jl")
include("countries/mexico.jl")
include("countries/netherlands.jl")
include("countries/poland.jl")
include("countries/russia.jl")
include("countries/south_korea.jl")
include("countries/spain.jl")
include("countries/turkey.jl")
include("countries/united_kingdom.jl")
include("countries/united_states.jl")

end

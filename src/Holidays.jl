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
include("calendars/chinese.jl")
include("calendars/buddhist.jl")
include("calendars/hindu.jl")

include("countries/argentina.jl")
include("countries/australia.jl")
include("countries/austria.jl")
include("countries/belgium.jl")
include("countries/bolivia.jl")
include("countries/brazil.jl")
include("countries/canada.jl")
include("countries/chile.jl")
include("countries/china.jl")
include("countries/colombia.jl")
include("countries/costa_rica.jl")
include("countries/czech_republic.jl")
include("countries/denmark.jl")
include("countries/egypt.jl")
include("countries/finland.jl")
include("countries/france.jl")
include("countries/germany.jl")
include("countries/greece.jl")
include("countries/india.jl")
include("countries/indonesia.jl")
include("countries/ireland.jl")
include("countries/israel.jl")
include("countries/italy.jl")
include("countries/japan.jl")
include("countries/mexico.jl")
include("countries/netherlands.jl")
include("countries/new_zealand.jl")
include("countries/nigeria.jl")
include("countries/norway.jl")
include("countries/philippines.jl")
include("countries/poland.jl")
include("countries/portugal.jl")
include("countries/romania.jl")
include("countries/russia.jl")
include("countries/south_africa.jl")
include("countries/south_korea.jl")
include("countries/spain.jl")
include("countries/sweden.jl")
include("countries/switzerland.jl")
include("countries/thailand.jl")
include("countries/turkey.jl")
include("countries/united_kingdom.jl")
include("countries/united_states.jl")
include("countries/vietnam.jl")

end

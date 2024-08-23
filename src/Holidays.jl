module Holidays

using Dates

export is_holiday, Country, Location

include("Location.jl")
include("Country.jl")

include("calendars/christian.jl")
include("countries/brazil.jl")

# is_holiday(country::Country.Brazil, date::Date) = is_holiday(Country.Brazil, date)
# function is_holiday(::Type{Country.Brazil}, date::Date)
#     println("brazil nation")
#     return false
# end

# function is_holiday(country::Country.Brazil{Location.RioDeJaneiro}, date::Date)
#     if is_holiday(Country.Brazil, date)
#         return true
#     end

#     println("rio de janeiro")
#     return false
# end

# include("calendar/gregorian.jl")

# include("groups/christian.jl")

# include("countries/brazil.jl")
# include("countries/united_states.jl")

end

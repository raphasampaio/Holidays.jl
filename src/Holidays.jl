module Holidays

using Dates
include("Regions.jl")
using .Regions

export Regions, is_holiday

# include("international.jl")

include("calendar/gregorian.jl")

include("groups/christian.jl")

include("countries/brazil.jl")
# include("countries/united_states.jl")

end

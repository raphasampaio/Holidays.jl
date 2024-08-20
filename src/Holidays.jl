module Holidays

using Dates

export is_holiday

include("abstract.jl")

include("calendar/gregorian.jl")

include("groups/christian.jl")

include("countries/brazil.jl")
include("countries/united_states.jl")

end

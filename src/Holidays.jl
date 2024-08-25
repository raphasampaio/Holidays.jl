module Holidays

using Dates

export
    HolidayCalendar, 
    is_holiday,
    AbstractHolidayCalendar,
    Location

include("holiday.jl")
include("Location.jl")
include("Country.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/germany.jl")
# include("countries/egypt.jl")
# include("countries/united_states.jl")

function is_holiday(calendar::T, date::Date) where {T <: AbstractHolidayCalendar}
    for holiday in calendar.holidays
        # if date in holiday
        #     return true
        # end
        if is_holiday(holiday, date)
            return true
        end
    end
    return false
end

end

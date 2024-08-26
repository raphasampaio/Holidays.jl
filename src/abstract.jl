abstract type AbstractHolidayCalendar end

function get_holiday(calendar::AbstractHolidayCalendar, date::Date)::Union{Nothing, Holiday}
    for holiday in calendar.holidays
        if date in holiday
            return holiday
        end
    end
    return nothing
end

function is_holiday(calendar::AbstractHolidayCalendar, date::Date)::Bool
    return get_holiday(calendar, date) !== nothing
end

function Base.in(date::Date, calendar::AbstractHolidayCalendar)::Bool
    return is_holiday(calendar, date)
end

function fetch_holidays(::Type{AbstractHolidayCalendar})::Vector{Holiday}
    return Vector{Holiday}()
end

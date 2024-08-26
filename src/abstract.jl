abstract type AbstractHolidayCalendar end

function Base.in(date::Date, calendar::AbstractHolidayCalendar)
    return is_holiday(calendar, date)
end

function is_holiday(calendar::AbstractHolidayCalendar, date::Date)
    for holiday in calendar.holidays
        if date in holiday
            return true
        end
    end
    return false
end

function fetch_holidays(::Type{AbstractHolidayCalendar})
    return Vector{Holiday}()
end

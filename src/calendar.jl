abstract type AbstractHolidayCalendar end

function fetch_holidays(::Type{AbstractHolidayCalendar})::Vector{Holiday}
    return Vector{Holiday}()
end

function find_holidays(calendar::AbstractHolidayCalendar, date::Date)::Vector{Holiday}
    found = Vector{Holiday}()

    for holiday in calendar.holidays
        if date in holiday
            push!(found, holiday)
        end
    end

    return found
end

function find_holidays(calendar::AbstractHolidayCalendar; years::AbstractVector{Int})::Vector{Holiday}
    holidays = Vector{Holiday}()

    for year in years
        start_date = Date(year, 1, 1)
        end_date = Date(year, 12, 31)

        for date in start_date:end_date
            for holiday in find_holidays(calendar, date)
                push!(holidays, holiday)
            end
        end
    end

    return holidays
end

function is_holiday(calendar::AbstractHolidayCalendar, date::Date)::Bool
    return length(find_holidays(calendar, date)) > 0
end

function Base.in(date::Date, calendar::AbstractHolidayCalendar)::Bool
    return is_holiday(calendar, date)
end

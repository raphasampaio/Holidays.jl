abstract type AbstractHolidayCalendar end

function fetch_holidays(::Type{AbstractHolidayCalendar})::Vector{Holiday}
    return Vector{Holiday}()
end

function find_holiday(calendar::AbstractHolidayCalendar, date::Date)::Union{Nothing, Holiday}
    for holiday in calendar.holidays
        if date in holiday
            return holiday
        end
    end
    return nothing
end

function is_holiday(calendar::AbstractHolidayCalendar, date::Date)::Bool
    return find_holiday(calendar, date) !== nothing
end

function Base.in(date::Date, calendar::AbstractHolidayCalendar)::Bool
    return is_holiday(calendar, date)
end

function find_holidays(calendar::AbstractHolidayCalendar; years::AbstractVector{Int})::Vector{Holiday}
    holidays = Vector{Holiday}()

    for year in years
        start_date = Date(year, 1, 1)
        end_date = Date(year, 12, 31)

        for date in start_date:end_date
            holiday = find_holiday(calendar, date)
            if holiday !== nothing
                push!(holidays, holiday)
            end
        end
    end

    return holidays
end
abstract type AbstractHolidayCalendar end

function fetch_holidays(::Type{AbstractHolidayCalendar})::Vector{Holiday}
    return Vector{Holiday}()
end

function find_holidays(calendar::AbstractHolidayCalendar, date::TimeType)::Vector{Holiday}
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

        for date in start_date:Day(1):end_date
            for holiday in find_holidays(calendar, date)
                push!(holidays, holiday)
            end
        end
    end

    return holidays
end

function is_holiday(calendar::AbstractHolidayCalendar, date::TimeType)::Bool
    return length(find_holidays(calendar, date)) > 0
end

function Base.in(date::TimeType, calendar::AbstractHolidayCalendar)::Bool
    return is_holiday(calendar, date)
end

function Base.show(io::IO, calendar::AbstractHolidayCalendar)
    # Get the type name without module prefix
    type_name = string(typeof(calendar))
    type_name = replace(type_name, r".*\." => "")  # Remove module prefix
    type_name = replace(type_name, r"\{.*\}" => "") # Remove type parameters
    
    # Check if it has a subdivision
    subdivision_info = if hasproperty(calendar, :subdivision) && calendar.subdivision !== nothing
        " ($(calendar.subdivision))"
    else
        ""
    end
    
    # Count holidays
    holiday_count = length(calendar.holidays)
    
    print(io, "$(type_name)$(subdivision_info) with $(holiday_count) holiday$(holiday_count == 1 ? "" : "s")")
    
    # If there are holidays, show them in a nice format
    if holiday_count > 0
        print(io, ":\n")
        for (i, holiday) in enumerate(calendar.holidays)
            prefix = i == holiday_count ? "  └─ " : "  ├─ "
            print(io, "$(prefix)$(holiday.label)\n")
        end
    end
end

function Base.show(io::IO, ::MIME"text/plain", calendar::AbstractHolidayCalendar)
    show(io, calendar)
end

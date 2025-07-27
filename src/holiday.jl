struct Holiday
    label::String
    handler::Function
    start_year::Union{Int, Nothing}
    end_year::Union{Int, Nothing}
    observed::AbstractObserved

    function Holiday(label::String, handler::Function; start_year::Union{Int, Nothing} = nothing, end_year::Union{Int, Nothing} = nothing, observed::AbstractObserved = Holidays.NoObservation())
        return new(label, handler, start_year, end_year, observed)
    end
end

function is_holiday(holiday::Holiday, date::TimeType)
    if !isnothing(holiday.start_year) && Dates.year(date) < holiday.start_year
        return false
    end

    if !isnothing(holiday.end_year) && Dates.year(date) > holiday.end_year
        return false
    end

    if holiday.handler(date)
        return true
    end

    if is_observed(holiday.observed, holiday.handler, date)
        return true
    end

    return false
end

function Base.in(date::TimeType, holiday::Holiday)::Bool
    return is_holiday(holiday, date)
end

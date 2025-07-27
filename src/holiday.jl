struct Holiday
    label::String
    start_year::Union{Int, Nothing}
    end_year::Union{Int, Nothing}
    handler::Function
    observed::AbstractObserved

    function Holiday(label::String, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, nothing, nothing, handler, observed)
    end

    function Holiday(label::String, start_year::Int, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, start_year, nothing, handler, observed)
    end

    function Holiday(label::String, start_year::Int, end_year::Int, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, start_year, end_year, handler, observed)
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

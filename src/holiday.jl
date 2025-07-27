struct Holiday
    label::String
    start_year::Int
    handler::Function
    observed::AbstractObserved

    function Holiday(label::String, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, 0, handler, observed)
    end

    function Holiday(label::String, start_year::Int, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, start_year, handler, observed)
    end
end

function is_holiday(holiday::Holiday, date::TimeType)
    if Dates.year(date) < holiday.start_year
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

struct Holiday
    label::String
    handler::Function
    observed::AbstractObserved

    function Holiday(label::String, handler::Function; observed::AbstractObserved = NoObservation())
        return new(label, handler, observed)
    end
end

function is_holiday(holiday::Holiday, date::TimeType)
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

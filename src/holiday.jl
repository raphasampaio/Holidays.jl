struct Holiday
    label::String
    handler::Function
    observed::Bool

    function Holiday(label::String, handler::Function; observed::Bool = false)
        return new(label, handler, observed)
    end
end

function is_holiday(holiday::Holiday, date::TimeType)
    if holiday.handler(date)
        return true
    end

    if holiday.observed
        if is_monday(date) && holiday.handler(date - Day(1))
            return true
        end

        if is_friday(date) && holiday.handler(date + Day(1))
            return true
        end
    end

    return false
end

function Base.in(date::TimeType, holiday::Holiday)::Bool
    return is_holiday(holiday, date)
end

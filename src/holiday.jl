Optional{T} = Union{T, Nothing}

struct Holiday
    label::String
    handler::Function
    observed::Optional{Function}
    start_year::Optional{Int}
    end_year::Optional{Int}

    function Holiday(label::String, handler::Function; observed::Optional{Function} = nothing, start_year::Optional{Int} = nothing, end_year::Optional{Int} = nothing)
        return new(label, handler, observed, start_year, end_year)
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

    if !isnothing(holiday.observed) && holiday.observed(holiday, date)
        return true
    end

    return false
end

function Base.in(date::TimeType, holiday::Holiday)::Bool
    return is_holiday(holiday, date)
end

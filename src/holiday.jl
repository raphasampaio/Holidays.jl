Optional{T} = Union{T, Nothing}

struct Holiday
    label::String
    handler::Function
    observed::Optional{Function}
    start_year::Optional{Int}
    end_year::Optional{Int}
    skip_years::Set{Int}

    function Holiday(
        label::String,
        handler::Function;
        observed::Optional{Function} = nothing,
        start_year::Optional{Int} = nothing,
        end_year::Optional{Int} = nothing,
        skip_years::Vector{Int} = Int[],
    )
        return new(
            label,
            handler,
            observed,
            start_year,
            end_year,
            Set{Int}(skip_years),
        )
    end
end

function is_holiday(holiday::Holiday, date::TimeType)::Bool
    year = Dates.year(date)

    if !isnothing(holiday.start_year) && year < holiday.start_year
        return false
    end

    if !isnothing(holiday.end_year) && year > holiday.end_year
        return false
    end

    if year in holiday.skip_years
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

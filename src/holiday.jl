struct Holiday
    label::String
    handler::Function
end

function is_holiday(holiday::Holiday, date::Date)
    return holiday.handler(date)
end

function Base.in(holiday::Holiday, date::Date)::Bool
    return is_holiday(holiday, date)
end
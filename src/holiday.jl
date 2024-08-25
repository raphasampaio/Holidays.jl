struct Holiday
    label::String
    handler::Function
end

function is_holiday(holiday::Holiday, date::Date)
    return holiday.handler(date)
end

function Base.in(date::Date, holiday::Holiday)::Bool
    return is_holiday(holiday, date)
end

function closest_weekday(holiday::Holiday, x::TimeType)
    if is_monday(x) && holiday.handler(x - Day(1))
        return true
    end

    if is_friday(x) && holiday.handler(x + Day(1))
        return true
    end

    return false
end

function next_monday_if_falls_on_weekend(holiday::Holiday, x::TimeType)
    if is_monday(x) && (holiday.handler(x - Day(1)) || holiday.handler(x - Day(2)))
        return true
    end
    return false
end

function next_monday_if_falls_on_sunday(holiday::Holiday, x::TimeType)
    if is_monday(x) && holiday.handler(x - Day(1))
        return true
    end
    return false
end

# Tuesday/Wednesday -> previous Monday, Thursday/Friday -> next Monday
function previous_monday_if_falls_on_tuesday_or_wednesday_or_next_monday_if_falls_on_thursday_or_friday(
    holiday::Holiday,
    x::TimeType,
)
    if is_monday(x)
        if holiday.handler(x + Day(1)) || holiday.handler(x + Day(2))
            return true
        elseif holiday.handler(x - Day(3)) || holiday.handler(x - Day(4))
            return true
        end
    end

    return false
end

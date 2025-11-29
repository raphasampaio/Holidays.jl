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
# For Uruguay: only applies during 1980-1983
function previous_monday_if_falls_on_tuesday_or_wednesday_or_next_monday_if_falls_on_thursday_or_friday_for_uruguay(holiday::Holiday, x::TimeType)
    year = Dates.year(x)
    # Only applies during 1980-1983
    (1980 <= year <= 1983) || return false

    # Only applies if x is a Monday
    is_monday(x) || return false

    # If holiday falls on Tue/Wed -> moves to previous Monday (this x)
    # If holiday falls on Thu/Fri -> moves to next Monday (this x)
    return (
        holiday.handler(x + Day(1)) ||  # Tuesday (next day)
        holiday.handler(x + Day(2)) ||  # Wednesday (2 days after)
        holiday.handler(x - Day(4)) ||  # Thursday (4 days before)
        holiday.handler(x - Day(3))     # Friday (3 days before)
    )
end
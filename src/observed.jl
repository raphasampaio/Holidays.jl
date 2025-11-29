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

# Uruguay observed rule: moves holidays to Monday
# If falls on Tue/Wed -> previous Monday
# If falls on Thu/Fri -> next Monday
# Can be configured to apply only in specific years
function to_monday_if_tue_to_fri(holiday::Holiday, x::TimeType; year_filter::Union{Nothing,Function}=nothing)
    year = Dates.year(x)

    # If year_filter is provided, check if rule applies to this year
    if year_filter !== nothing && !year_filter(year)
        return false
    end

    # Check if x is Monday and the actual holiday fell on Tue/Wed/Thu/Fri
    if is_monday(x)
        # Check Tuesday (1 day before Monday)
        if holiday.handler(x + Day(1))
            return true
        end
        # Check Wednesday (2 days after Monday)
        if holiday.handler(x + Day(2))
            return true
        end
        # Check Thursday (4 days before Monday)
        if holiday.handler(x - Day(4))
            return true
        end
        # Check Friday (3 days before Monday)
        if holiday.handler(x - Day(3))
            return true
        end
    end

    return false
end

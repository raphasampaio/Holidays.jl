abstract type AbstractObserved end

struct NoObservation <: AbstractObserved end

function is_observed(::NoObservation, handler::Function, date::TimeType)
    return false
end

struct ClosestWeekday <: AbstractObserved end

function is_observed(::ClosestWeekday, handler::Function, date::TimeType)
    if is_monday(date) && handler(date - Day(1))
        return true
    end

    if is_friday(date) && handler(date + Day(1))
        return true
    end

    return false
end

struct NextWeekday <: AbstractObserved end

function is_observed(::NextWeekday, handler::Function, date::TimeType)
    if is_monday(date) && (handler(date - Day(1)) || handler(date - Day(2)))
        return true
    end

    return false
end

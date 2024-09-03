struct MonthDay
    month::Int
    day::Int

    function MonthDay(month::Integer, day::Integer)
        return new(month, day)
    end
end

function MonthDay(d::Date)
    return MonthDay(Dates.monthday(d)...)
end

function Base.convert(::Type{Date}, md::MonthDay)
    return Date(md)
end

Dates.year(md::MonthDay) = md.year

Dates.month(md::MonthDay) = md.month

Dates.monthday(md::MonthDay) = (md.month, md.day)

function Base.in(date::Date, set::Set{MonthDay})::Bool
    error("Not implemented")
    return nothing
end

module MonthDays

using Dates

export MonthDay

struct MonthDay
    month::Int
    day::Int

    function MonthDay(month::Integer, day::Integer)
        return new(month, day)
    end
end

MonthDay(d::Date) = MonthDay(Dates.monthday(d)...)

Dates.year(md::MonthDay) = md.year
Dates.month(md::MonthDay) = md.month
Dates.monthday(md::MonthDay) = (md.month, md.day)

end

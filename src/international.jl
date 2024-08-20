function is_labor_day(::AbstractCountry, date::Date)::Bool
    day = Dates.day(date)
    month = Dates.month(date)
    return month == 5 && day == 1
end

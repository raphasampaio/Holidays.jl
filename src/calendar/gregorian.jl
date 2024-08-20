function is_new_years_day(date::Date)::Bool
    day = Dates.day(date)
    month = Dates.month(date)
    year = Dates.year(date)

    return month == 1 && day == 1
end

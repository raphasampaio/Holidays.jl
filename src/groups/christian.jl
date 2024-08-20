function is_christmas_day(date::Date)
    day = Dates.day(date)
    month = Dates.month(date)

    return month == 12 && day == 25
end

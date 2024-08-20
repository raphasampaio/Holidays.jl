function is_labor_day(::AbstractCountry, date::Date)::Bool
    return Dates.month(date) == Dates.May && Dates.day(date) == 1
end

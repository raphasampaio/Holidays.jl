using Holidays
using Dates

function get_holiday_dates(calendar, year)
    dates = Date[]
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)
    
    for date in start_date:Day(1):end_date
        if date in calendar
            push!(dates, date)
        end
    end
    
    return sort(dates)
end

println("China 2024 holidays:")
china = Holidays.China()
dates = get_holiday_dates(china, 2024)
for d in dates
    println("  ", d)
end
println("Total: ", length(dates))

println("\nIndia 2024 holidays:")
india = Holidays.India()
dates = get_holiday_dates(india, 2024)
for d in dates
    println("  ", d)
end
println("Total: ", length(dates))

println("\nThailand 2024 holidays:")
thailand = Holidays.Thailand()
dates = get_holiday_dates(thailand, 2024)
for d in dates
    println("  ", d)
end
println("Total: ", length(dates))

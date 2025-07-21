function test_holidays(calendar::AbstractHolidayCalendar, holidays::Vector{Date})
    if isempty(holidays)
        return nothing
    end

    start_date = minimum(holidays)
    end_date = maximum(holidays)

    set = Set(holidays)

    for date in start_date:Day(1):end_date
        @test (date in calendar) == (date in set)
    end

    return nothing
end

function test_holidays(calendar::AbstractHolidayCalendar, holidays::Vector{Date}, more_holidays::Vector{Date})
    test_holidays(calendar, vcat(holidays, more_holidays))
    return nothing
end

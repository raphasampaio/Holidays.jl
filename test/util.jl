function test_holidays(calendar::AbstractHolidayCalendar, year::Integer, holidays::Vector{Date})
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)

    set = Set(holidays)

    for date in start_date:Day(1):end_date
        @testset "$date" begin
            @test (date in calendar) == (date in set)
        end
    end

    @test length(Holidays.find_holidays(calendar; years = [year])) == length(holidays)

    return nothing
end

function test_holidays(calendar::AbstractHolidayCalendar, year::Integer, holidays::Vector{Date}, more_holidays::Vector{Date})
    test_holidays(calendar, year, vcat(holidays, more_holidays))
    return nothing
end

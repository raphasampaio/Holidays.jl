using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/brazil.jl")
include("countries/egypt.jl")
include("countries/germany.jl")
include("countries/united_states.jl")

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

function test_all()
    @testset "Aqua.jl" begin
        test_aqua()
    end

    @testset "Christian" begin
        test_christian()
    end

    @testset "Islamic" begin
        test_islamic()
    end

    @testset "Brazil" begin
        test_brazil()
    end

    @testset "Egypt" begin
        test_egypt()
    end

    @testset "Germany" begin
        test_germany()
    end

    @testset "United States" begin
        test_united_states()
    end

    return nothing
end

test_all()

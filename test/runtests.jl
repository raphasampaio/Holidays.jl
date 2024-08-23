using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")

include("countries/brazil.jl")
include("countries/united_states.jl")

function test_holidays(country, year::Integer, holidays::Set)
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)

    for date = start_date:end_date
        @testset "$date" begin
            @test is_holiday(country, date) == (date in holidays)
        end
    end

    return nothing
end

function test_holidays(country, year::Integer, holidays::Set, more_holidays::Set)
    merged = union(holidays, more_holidays)
    test_holidays(country, year, merged)
    return nothing
end

function test_all()
    # @testset "Aqua.jl" begin
    #     test_aqua()
    # end

    @testset "Brazil" begin
        test_brazil()
    end

    @testset "United States" begin
        test_united_states()
    end

    return nothing
end

test_all()

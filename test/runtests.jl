using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")

include("countries/brazil.jl")


# include("groups/christian.jl")


# include("countries/united_states.jl")

function test_holidays(country, holidays::Set, year::Integer)
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)

    for date in start_date:end_date
        @test is_holiday(country, date) == (date in holidays)
    end

    return nothing
end

function test_all()
    # @testset "Aqua.jl" begin
    #     test_aqua()
    # end

    # @testset "Christian" begin
    #     test_christian()
    # end

    @testset "Brazil" begin
        test_brazil()
    end

    # @testset "United States" begin
    #     test_united_states()
    # end

    return nothing
end

test_all()

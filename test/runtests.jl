using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")

include("groups/christian.jl")

include("countries/brazil.jl")
include("countries/united_states.jl")

function test_holidays(country, holidays, year::Integer)
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)

    for date = start_date:end_date
        @testset "$(Dates.format(date, "yyyy, mm, dd"))" begin
            if date in holidays
                @test is_holiday(country, date) == true
            else
                @test is_holiday(country, date) == false
            end
        end
    end

    return nothing
end

function test_all()
    # @testset "Aqua.jl" begin
    #     test_aqua()
    # end

    @testset "Christian" begin
        test_christian()
    end

    @testset "Brazil" begin
        test_brazil()
    end

    @testset "United States" begin
        test_united_states()
    end

    return nothing
end

test_all()

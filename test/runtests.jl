using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")
include("countries/brazil.jl")
include("countries/united_states.jl")

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

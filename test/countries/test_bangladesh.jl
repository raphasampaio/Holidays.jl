module TestBangladesh

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bangladesh" begin
    calendar = Holidays.Bangladesh()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestBangladesh

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bangladesh" begin
    calendar = Holidays.Bangladesh()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

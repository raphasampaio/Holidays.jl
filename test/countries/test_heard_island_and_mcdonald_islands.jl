module TestHeardIslandAndMcdonaldIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "HeardIslandAndMcdonaldIslands" begin
    calendar = Holidays.HeardIslandAndMcdonaldIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

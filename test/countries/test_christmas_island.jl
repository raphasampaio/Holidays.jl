module TestChristmasIsland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "ChristmasIsland" begin
    calendar = Holidays.ChristmasIsland()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestBouvetIsland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "BouvetIsland" begin
    calendar = Holidays.BouvetIsland()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

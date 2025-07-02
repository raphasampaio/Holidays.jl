module TestSolomonIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SolomonIslands" begin
    calendar = Holidays.SolomonIslands()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

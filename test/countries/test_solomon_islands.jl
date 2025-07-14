module TestSolomonIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SolomonIslands" begin
    calendar = Holidays.SolomonIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

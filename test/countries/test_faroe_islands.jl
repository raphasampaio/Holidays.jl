module TestFaroeIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "FaroeIslands" begin
    calendar = Holidays.FaroeIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

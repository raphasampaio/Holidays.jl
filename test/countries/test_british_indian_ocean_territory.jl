module TestBritishIndianOceanTerritory

using Dates
using Holidays
using Test

include("../util.jl")

@testset "BritishIndianOceanTerritory" begin
    calendar = Holidays.BritishIndianOceanTerritory()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

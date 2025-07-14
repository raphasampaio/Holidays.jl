module TestNorthMacedonia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "NorthMacedonia" begin
    calendar = Holidays.NorthMacedonia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

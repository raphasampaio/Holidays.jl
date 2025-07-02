module TestEastTimor

using Dates
using Holidays
using Test

include("../util.jl")

@testset "EastTimor" begin
    calendar = Holidays.EastTimor()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

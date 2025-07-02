module TestJordan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Jordan" begin
    calendar = Holidays.Jordan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

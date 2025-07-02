module TestSanMarino

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SanMarino" begin
    calendar = Holidays.SanMarino()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

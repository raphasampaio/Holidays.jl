module TestSanMarino

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SanMarino" begin
    calendar = Holidays.SanMarino()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

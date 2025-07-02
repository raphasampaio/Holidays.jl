module TestNicaragua

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Nicaragua" begin
    calendar = Holidays.Nicaragua()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

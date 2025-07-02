module TestLaos

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Laos" begin
    calendar = Holidays.Laos()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

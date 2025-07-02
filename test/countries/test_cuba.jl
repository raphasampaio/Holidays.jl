module TestCuba

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cuba" begin
    calendar = Holidays.Cuba()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

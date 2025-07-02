module TestSierraLeone

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SierraLeone" begin
    calendar = Holidays.SierraLeone()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

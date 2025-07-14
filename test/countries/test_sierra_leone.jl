module TestSierraLeone

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SierraLeone" begin
    calendar = Holidays.SierraLeone()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

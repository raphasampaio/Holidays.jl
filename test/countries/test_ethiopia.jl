module TestEthiopia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ethiopia" begin
    calendar = Holidays.Ethiopia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

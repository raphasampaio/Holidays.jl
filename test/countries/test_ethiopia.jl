module TestEthiopia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ethiopia" begin
    calendar = Holidays.Ethiopia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

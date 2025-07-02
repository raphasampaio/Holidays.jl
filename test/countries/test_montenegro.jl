module TestMontenegro

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Montenegro" begin
    calendar = Holidays.Montenegro()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

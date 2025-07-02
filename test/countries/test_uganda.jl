module TestUganda

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Uganda" begin
    calendar = Holidays.Uganda()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

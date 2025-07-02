module TestSingapore

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Singapore" begin
    calendar = Holidays.Singapore()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestSingapore

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Singapore" begin
    calendar = Holidays.Singapore()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

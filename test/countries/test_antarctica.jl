module TestAntarctica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Antarctica" begin
    calendar = Holidays.Antarctica()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

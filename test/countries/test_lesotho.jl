module TestLesotho

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Lesotho" begin
    calendar = Holidays.Lesotho()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestSaoTomeAndPrincipe

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaoTomeAndPrincipe" begin
    calendar = Holidays.SaoTomeAndPrincipe()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

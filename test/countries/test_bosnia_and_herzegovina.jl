module TestBosniaAndHerzegovina

using Dates
using Holidays
using Test

include("../util.jl")

@testset "BosniaAndHerzegovina" begin
    calendar = Holidays.BosniaAndHerzegovina()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

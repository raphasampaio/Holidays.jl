module TestGuineaBissau

using Dates
using Holidays
using Test

include("../util.jl")

@testset "GuineaBissau" begin
    calendar = Holidays.GuineaBissau()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestTanzania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tanzania" begin
    calendar = Holidays.Tanzania()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

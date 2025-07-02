module TestPanama

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Panama" begin
    calendar = Holidays.Panama()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

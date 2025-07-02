module TestLuxembourg

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Luxembourg" begin
    calendar = Holidays.Luxembourg()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

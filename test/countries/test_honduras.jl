module TestHonduras

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Honduras" begin
    calendar = Holidays.Honduras()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

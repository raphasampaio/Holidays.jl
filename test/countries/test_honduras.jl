module TestHonduras

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Honduras" begin
    calendar = Holidays.Honduras()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

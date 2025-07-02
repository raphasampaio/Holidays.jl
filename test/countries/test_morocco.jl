module TestMorocco

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Morocco" begin
    calendar = Holidays.Morocco()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

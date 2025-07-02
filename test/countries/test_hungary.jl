module TestHungary

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Hungary" begin
    calendar = Holidays.Hungary()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestCyprus

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cyprus" begin
    calendar = Holidays.Cyprus()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

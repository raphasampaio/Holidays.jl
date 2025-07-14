module TestCyprus

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cyprus" begin
    calendar = Holidays.Cyprus()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

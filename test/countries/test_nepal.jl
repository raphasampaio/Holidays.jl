module TestNepal

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Nepal" begin
    calendar = Holidays.Nepal()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

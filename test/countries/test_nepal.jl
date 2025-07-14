module TestNepal

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Nepal" begin
    calendar = Holidays.Nepal()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

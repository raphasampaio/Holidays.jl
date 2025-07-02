module TestChad

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chad" begin
    calendar = Holidays.Chad()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

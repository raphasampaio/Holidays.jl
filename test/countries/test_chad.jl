module TestChad

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chad" begin
    calendar = Holidays.Chad()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestPanama

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Panama" begin
    calendar = Holidays.Panama()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

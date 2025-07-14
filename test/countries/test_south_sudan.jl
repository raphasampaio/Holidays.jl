module TestSouthSudan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SouthSudan" begin
    calendar = Holidays.SouthSudan()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

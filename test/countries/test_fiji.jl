module TestFiji

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Fiji" begin
    calendar = Holidays.Fiji()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

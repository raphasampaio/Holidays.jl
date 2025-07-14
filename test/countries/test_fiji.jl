module TestFiji

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Fiji" begin
    calendar = Holidays.Fiji()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

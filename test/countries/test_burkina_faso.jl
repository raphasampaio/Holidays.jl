module TestBurkinaFaso

using Dates
using Holidays
using Test

include("../util.jl")

@testset "BurkinaFaso" begin
    calendar = Holidays.BurkinaFaso()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

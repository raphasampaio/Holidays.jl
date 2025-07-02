module TestIran

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iran" begin
    calendar = Holidays.Iran()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestIran

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iran" begin
    calendar = Holidays.Iran()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

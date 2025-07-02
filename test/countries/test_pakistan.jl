module TestPakistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Pakistan" begin
    calendar = Holidays.Pakistan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

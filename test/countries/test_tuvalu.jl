module TestTuvalu

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tuvalu" begin
    calendar = Holidays.Tuvalu()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

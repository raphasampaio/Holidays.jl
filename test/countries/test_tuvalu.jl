module TestTuvalu

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tuvalu" begin
    calendar = Holidays.Tuvalu()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

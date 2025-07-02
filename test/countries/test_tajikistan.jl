module TestTajikistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tajikistan" begin
    calendar = Holidays.Tajikistan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

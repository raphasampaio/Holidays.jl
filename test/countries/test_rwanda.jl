module TestRwanda

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Rwanda" begin
    calendar = Holidays.Rwanda()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

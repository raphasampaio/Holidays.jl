module TestBhutan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bhutan" begin
    calendar = Holidays.Bhutan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

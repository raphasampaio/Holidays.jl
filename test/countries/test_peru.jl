module TestPeru

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Peru" begin
    calendar = Holidays.Peru()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestEstonia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Estonia" begin
    calendar = Holidays.Estonia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

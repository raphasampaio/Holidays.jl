module TestTanzania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tanzania" begin
    calendar = Holidays.Tanzania()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

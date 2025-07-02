module TestAlgeria

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Algeria" begin
    calendar = Holidays.Algeria()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestAlgeria

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Algeria" begin
    calendar = Holidays.Algeria()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

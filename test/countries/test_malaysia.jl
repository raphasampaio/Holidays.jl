module TestMalaysia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Malaysia" begin
    calendar = Holidays.Malaysia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

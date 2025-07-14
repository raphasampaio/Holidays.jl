module TestUganda

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Uganda" begin
    calendar = Holidays.Uganda()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

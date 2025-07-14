module TestKuwait

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kuwait" begin
    calendar = Holidays.Kuwait()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

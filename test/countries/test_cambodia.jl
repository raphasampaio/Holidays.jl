module TestCambodia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cambodia" begin
    calendar = Holidays.Cambodia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

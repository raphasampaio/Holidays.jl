module TestGhana

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ghana" begin
    calendar = Holidays.Ghana()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

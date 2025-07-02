module TestCameroon

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cameroon" begin
    calendar = Holidays.Cameroon()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

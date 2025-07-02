module TestMozambique

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mozambique" begin
    calendar = Holidays.Mozambique()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

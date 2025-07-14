module TestMozambique

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mozambique" begin
    calendar = Holidays.Mozambique()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

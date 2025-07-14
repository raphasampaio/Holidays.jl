module TestDemocraticRepublicOfTheCongo

using Dates
using Holidays
using Test

include("../util.jl")

@testset "DemocraticRepublicOfTheCongo" begin
    calendar = Holidays.DemocraticRepublicOfTheCongo()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestRepublicOfTheCongo

using Dates
using Holidays
using Test

include("../util.jl")

@testset "RepublicOfTheCongo" begin
    calendar = Holidays.RepublicOfTheCongo()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

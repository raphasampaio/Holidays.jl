module TestVenezuela

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Venezuela" begin
    calendar = Holidays.Venezuela()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

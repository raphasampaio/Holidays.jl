module TestBurundi

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Burundi" begin
    calendar = Holidays.Burundi()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

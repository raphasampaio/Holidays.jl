module TestBurundi

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Burundi" begin
    calendar = Holidays.Burundi()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

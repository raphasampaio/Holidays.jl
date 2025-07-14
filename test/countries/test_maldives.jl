module TestMaldives

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Maldives" begin
    calendar = Holidays.Maldives()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

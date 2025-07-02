module TestBenin

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Benin" begin
    calendar = Holidays.Benin()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

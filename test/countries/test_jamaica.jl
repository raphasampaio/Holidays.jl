module TestJamaica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Jamaica" begin
    calendar = Holidays.Jamaica()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

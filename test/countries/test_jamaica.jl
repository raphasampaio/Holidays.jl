module TestJamaica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Jamaica" begin
    calendar = Holidays.Jamaica()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

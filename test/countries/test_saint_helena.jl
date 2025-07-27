module TestSaintHelena

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaintHelena" begin
    calendar = Holidays.SaintHelena()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

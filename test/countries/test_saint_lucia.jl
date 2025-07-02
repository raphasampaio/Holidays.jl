module TestSaintLucia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaintLucia" begin
    calendar = Holidays.SaintLucia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestSaintLucia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaintLucia" begin
    calendar = Holidays.SaintLucia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

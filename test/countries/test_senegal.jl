module TestSenegal

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Senegal" begin
    calendar = Holidays.Senegal()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

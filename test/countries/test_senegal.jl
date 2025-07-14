module TestSenegal

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Senegal" begin
    calendar = Holidays.Senegal()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

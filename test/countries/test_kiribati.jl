module TestKiribati

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kiribati" begin
    calendar = Holidays.Kiribati()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

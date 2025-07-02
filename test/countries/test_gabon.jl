module TestGabon

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Gabon" begin
    calendar = Holidays.Gabon()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

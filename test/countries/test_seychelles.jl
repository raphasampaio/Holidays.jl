module TestSeychelles

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Seychelles" begin
    calendar = Holidays.Seychelles()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

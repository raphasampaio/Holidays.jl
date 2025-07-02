module TestTheBahamas

using Dates
using Holidays
using Test

include("../util.jl")

@testset "TheBahamas" begin
    calendar = Holidays.TheBahamas()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

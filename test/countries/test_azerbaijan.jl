module TestAzerbaijan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Azerbaijan" begin
    calendar = Holidays.Azerbaijan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

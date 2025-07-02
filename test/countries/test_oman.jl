module TestOman

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Oman" begin
    calendar = Holidays.Oman()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

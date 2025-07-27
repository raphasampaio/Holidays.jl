module TestSouthGeorgiaAndTheSouthSandwichIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SouthGeorgiaAndTheSouthSandwichIslands" begin
    calendar = Holidays.SouthGeorgiaAndTheSouthSandwichIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

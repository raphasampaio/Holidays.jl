module TestNiger

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Niger" begin
    calendar = Holidays.Niger()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestGuatemala

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Guatemala" begin
    calendar = Holidays.Guatemala()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

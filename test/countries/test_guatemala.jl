module TestGuatemala

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Guatemala" begin
    calendar = Holidays.Guatemala()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

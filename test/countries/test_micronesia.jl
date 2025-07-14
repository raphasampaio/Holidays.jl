module TestMicronesia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Micronesia" begin
    calendar = Holidays.Micronesia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

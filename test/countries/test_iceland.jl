module TestIceland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iceland" begin
    calendar = Holidays.Iceland()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

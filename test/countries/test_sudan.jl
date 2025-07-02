module TestSudan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Sudan" begin
    calendar = Holidays.Sudan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

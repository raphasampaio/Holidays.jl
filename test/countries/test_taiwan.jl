module TestTaiwan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Taiwan" begin
    calendar = Holidays.Taiwan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

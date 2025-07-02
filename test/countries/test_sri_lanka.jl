module TestSriLanka

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SriLanka" begin
    calendar = Holidays.SriLanka()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

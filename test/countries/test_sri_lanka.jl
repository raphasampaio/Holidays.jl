module TestSriLanka

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SriLanka" begin
    calendar = Holidays.SriLanka()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

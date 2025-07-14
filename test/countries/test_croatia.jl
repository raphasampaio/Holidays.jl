module TestCroatia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Croatia" begin
    calendar = Holidays.Croatia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

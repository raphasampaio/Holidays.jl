module TestAmericanSamoa

using Dates
using Holidays
using Test

include("../util.jl")

@testset "AmericanSamoa" begin
    calendar = Holidays.AmericanSamoa()

    holidays = Date[
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end

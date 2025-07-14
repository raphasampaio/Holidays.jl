module TestTajikistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tajikistan" begin
    calendar = Holidays.Tajikistan()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestSaudiArabia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaudiArabia" begin
    calendar = Holidays.SaudiArabia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

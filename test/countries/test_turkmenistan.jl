module TestTurkmenistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Turkmenistan" begin
    calendar = Holidays.Turkmenistan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestTurkmenistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Turkmenistan" begin
    calendar = Holidays.Turkmenistan()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

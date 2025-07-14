module TestSamoa

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Samoa" begin
    calendar = Holidays.Samoa()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

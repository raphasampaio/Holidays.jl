module TestWesternSahara

using Dates
using Holidays
using Test

include("../util.jl")

@testset "WesternSahara" begin
    calendar = Holidays.WesternSahara()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

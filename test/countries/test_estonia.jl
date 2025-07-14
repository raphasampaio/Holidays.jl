module TestEstonia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Estonia" begin
    calendar = Holidays.Estonia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

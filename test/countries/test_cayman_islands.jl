module TestCaymanIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CaymanIslands" begin
    calendar = Holidays.CaymanIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

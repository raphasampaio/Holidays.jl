module TestNiger

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Niger" begin
    calendar = Holidays.Niger()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

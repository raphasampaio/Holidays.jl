module TestMoldova

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Moldova" begin
    calendar = Holidays.Moldova()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

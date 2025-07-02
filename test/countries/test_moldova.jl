module TestMoldova

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Moldova" begin
    calendar = Holidays.Moldova()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

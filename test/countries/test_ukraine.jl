module TestUkraine

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ukraine" begin
    calendar = Holidays.Ukraine()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

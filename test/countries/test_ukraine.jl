module TestUkraine

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ukraine" begin
    calendar = Holidays.Ukraine()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

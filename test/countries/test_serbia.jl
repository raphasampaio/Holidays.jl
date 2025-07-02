module TestSerbia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Serbia" begin
    calendar = Holidays.Serbia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

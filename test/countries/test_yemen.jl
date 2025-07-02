module TestYemen

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Yemen" begin
    calendar = Holidays.Yemen()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

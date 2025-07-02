module TestLithuania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Lithuania" begin
    calendar = Holidays.Lithuania()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

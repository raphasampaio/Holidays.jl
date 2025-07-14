module TestLithuania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Lithuania" begin
    calendar = Holidays.Lithuania()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

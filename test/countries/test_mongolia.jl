module TestMongolia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mongolia" begin
    calendar = Holidays.Mongolia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

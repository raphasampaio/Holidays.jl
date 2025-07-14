module TestMadagascar

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Madagascar" begin
    calendar = Holidays.Madagascar()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

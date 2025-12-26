module TestArgentina

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Argentina" begin
    calendar = Holidays.Argentina()

    holidays = Date[
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end

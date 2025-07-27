module TestAnguilla

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Anguilla" begin
    calendar = Holidays.Anguilla()

    holidays = Date[
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end

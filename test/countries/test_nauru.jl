module TestNauru

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Nauru" begin
    calendar = Holidays.Nauru()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

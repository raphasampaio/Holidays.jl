module TestIraq

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iraq" begin
    calendar = Holidays.Iraq()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

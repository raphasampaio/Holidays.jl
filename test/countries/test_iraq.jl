module TestIraq

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iraq" begin
    calendar = Holidays.Iraq()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

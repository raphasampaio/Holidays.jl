module TestZimbabwe

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Zimbabwe" begin
    calendar = Holidays.Zimbabwe()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

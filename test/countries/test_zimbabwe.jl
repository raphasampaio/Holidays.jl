module TestZimbabwe

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Zimbabwe" begin
    calendar = Holidays.Zimbabwe()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

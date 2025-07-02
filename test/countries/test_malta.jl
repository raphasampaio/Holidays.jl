module TestMalta

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Malta" begin
    calendar = Holidays.Malta()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

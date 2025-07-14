module TestMalta

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Malta" begin
    calendar = Holidays.Malta()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestQatar

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Qatar" begin
    calendar = Holidays.Qatar()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

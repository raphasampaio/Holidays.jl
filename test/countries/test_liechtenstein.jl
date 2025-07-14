module TestLiechtenstein

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Liechtenstein" begin
    calendar = Holidays.Liechtenstein()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

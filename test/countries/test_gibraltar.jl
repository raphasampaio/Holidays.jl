module TestGibraltar

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Gibraltar" begin
    calendar = Holidays.Gibraltar()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

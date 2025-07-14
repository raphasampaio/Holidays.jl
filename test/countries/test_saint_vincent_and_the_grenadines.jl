module TestSaintVincentAndTheGrenadines

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaintVincentAndTheGrenadines" begin
    calendar = Holidays.SaintVincentAndTheGrenadines()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

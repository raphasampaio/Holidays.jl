module TestPitcairn

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Pitcairn" begin
    calendar = Holidays.Pitcairn()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

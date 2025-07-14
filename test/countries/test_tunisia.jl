module TestTunisia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tunisia" begin
    calendar = Holidays.Tunisia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestSomalia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Somalia" begin
    calendar = Holidays.Somalia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

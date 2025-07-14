module TestCameroon

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Cameroon" begin
    calendar = Holidays.Cameroon()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

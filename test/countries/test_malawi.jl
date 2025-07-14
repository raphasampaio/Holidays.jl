module TestMalawi

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Malawi" begin
    calendar = Holidays.Malawi()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

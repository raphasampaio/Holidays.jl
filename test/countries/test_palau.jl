module TestPalau

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Palau" begin
    calendar = Holidays.Palau()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

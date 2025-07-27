module TestNiue

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Niue" begin
    calendar = Holidays.Niue()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

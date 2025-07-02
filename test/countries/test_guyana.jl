module TestGuyana

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Guyana" begin
    calendar = Holidays.Guyana()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

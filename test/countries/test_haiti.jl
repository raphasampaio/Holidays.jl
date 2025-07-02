module TestHaiti

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Haiti" begin
    calendar = Holidays.Haiti()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

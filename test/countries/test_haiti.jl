module TestHaiti

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Haiti" begin
    calendar = Holidays.Haiti()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

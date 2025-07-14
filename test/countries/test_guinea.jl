module TestGuinea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Guinea" begin
    calendar = Holidays.Guinea()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

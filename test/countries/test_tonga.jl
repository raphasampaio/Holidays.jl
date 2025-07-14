module TestTonga

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tonga" begin
    calendar = Holidays.Tonga()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

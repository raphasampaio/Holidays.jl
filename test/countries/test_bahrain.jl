module TestBahrain

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bahrain" begin
    calendar = Holidays.Bahrain()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

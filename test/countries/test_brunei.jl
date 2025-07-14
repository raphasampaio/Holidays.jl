module TestBrunei

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Brunei" begin
    calendar = Holidays.Brunei()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

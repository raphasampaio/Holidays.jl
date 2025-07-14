module TestBenin

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Benin" begin
    calendar = Holidays.Benin()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestMontserrat

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Montserrat" begin
    calendar = Holidays.Montserrat()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestGrenada

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Grenada" begin
    calendar = Holidays.Grenada()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

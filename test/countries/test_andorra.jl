module TestAndorra

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Andorra" begin
    calendar = Holidays.Andorra()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestAndorra

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Andorra" begin
    calendar = Holidays.Andorra()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

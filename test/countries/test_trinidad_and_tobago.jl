module TestTrinidadAndTobago

using Dates
using Holidays
using Test

include("../util.jl")

@testset "TrinidadAndTobago" begin
    calendar = Holidays.TrinidadAndTobago()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

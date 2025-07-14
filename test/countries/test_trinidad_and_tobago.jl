module TestTrinidadAndTobago

using Dates
using Holidays
using Test

include("../util.jl")

@testset "TrinidadAndTobago" begin
    calendar = Holidays.TrinidadAndTobago()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

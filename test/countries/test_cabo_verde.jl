module TestCaboVerde

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CaboVerde" begin
    calendar = Holidays.CaboVerde()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

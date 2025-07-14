module TestCaboVerde

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CaboVerde" begin
    calendar = Holidays.CaboVerde()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestTogo

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Togo" begin
    calendar = Holidays.Togo()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

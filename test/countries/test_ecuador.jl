module TestEcuador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ecuador" begin
    calendar = Holidays.Ecuador()

    holidays = []

    test_holidays(calendar, holidays)

    return nothing
end

end

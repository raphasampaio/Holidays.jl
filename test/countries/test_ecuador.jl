module TestEcuador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ecuador" begin
    calendar = Holidays.Ecuador()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestCentralAfricanRepublic

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CentralAfricanRepublic" begin
    calendar = Holidays.CentralAfricanRepublic()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

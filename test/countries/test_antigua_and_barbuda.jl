module TestAntiguaAndBarbuda

using Dates
using Holidays
using Test

include("../util.jl")

@testset "AntiguaAndBarbuda" begin
    calendar = Holidays.AntiguaAndBarbuda()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

module TestAntiguaAndBarbuda

using Dates
using Holidays
using Test

include("../util.jl")

@testset "AntiguaAndBarbuda" begin
    calendar = Holidays.AntiguaAndBarbuda()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

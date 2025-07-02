module TestBelarus

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Belarus" begin
    calendar = Holidays.Belarus()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

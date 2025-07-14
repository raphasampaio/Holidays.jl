module TestBelarus

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Belarus" begin
    calendar = Holidays.Belarus()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

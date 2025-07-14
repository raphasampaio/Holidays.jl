module TestMonaco

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Monaco" begin
    calendar = Holidays.Monaco()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

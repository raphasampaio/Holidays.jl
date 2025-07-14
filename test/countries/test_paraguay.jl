module TestParaguay

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Paraguay" begin
    calendar = Holidays.Paraguay()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

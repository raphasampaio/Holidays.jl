module TestSyria

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Syria" begin
    calendar = Holidays.Syria()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

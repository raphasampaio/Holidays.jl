module TestSlovenia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Slovenia" begin
    calendar = Holidays.Slovenia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

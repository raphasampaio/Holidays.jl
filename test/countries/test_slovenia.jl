module TestSlovenia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Slovenia" begin
    calendar = Holidays.Slovenia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

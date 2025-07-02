module TestComoros

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Comoros" begin
    calendar = Holidays.Comoros()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

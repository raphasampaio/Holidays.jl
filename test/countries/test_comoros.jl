module TestComoros

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Comoros" begin
    calendar = Holidays.Comoros()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestSlovakia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Slovakia" begin
    calendar = Holidays.Slovakia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

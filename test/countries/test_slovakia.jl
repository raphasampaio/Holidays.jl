module TestSlovakia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Slovakia" begin
    calendar = Holidays.Slovakia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

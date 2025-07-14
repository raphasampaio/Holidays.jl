module TestTheGambia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "TheGambia" begin
    calendar = Holidays.TheGambia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

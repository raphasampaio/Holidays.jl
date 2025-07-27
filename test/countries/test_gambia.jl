module TestGambia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Gambia" begin
    calendar = Holidays.Gambia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

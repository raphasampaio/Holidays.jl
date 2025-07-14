module TestZambia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Zambia" begin
    calendar = Holidays.Zambia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

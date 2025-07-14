module TestGeorgia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Georgia" begin
    calendar = Holidays.Georgia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

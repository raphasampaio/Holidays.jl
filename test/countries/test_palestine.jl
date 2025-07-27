module TestPalestine

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Palestine" begin
    calendar = Holidays.Palestine()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

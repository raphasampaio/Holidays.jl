module TestNorthKorea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "NorthKorea" begin
    calendar = Holidays.NorthKorea()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

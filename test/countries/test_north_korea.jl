module TestNorthKorea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "NorthKorea" begin
    calendar = Holidays.NorthKorea()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

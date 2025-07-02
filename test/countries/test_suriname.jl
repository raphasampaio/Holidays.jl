module TestSuriname

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Suriname" begin
    calendar = Holidays.Suriname()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

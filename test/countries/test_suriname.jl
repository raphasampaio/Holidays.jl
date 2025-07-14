module TestSuriname

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Suriname" begin
    calendar = Holidays.Suriname()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

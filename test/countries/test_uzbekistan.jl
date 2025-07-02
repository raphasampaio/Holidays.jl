module TestUzbekistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Uzbekistan" begin
    calendar = Holidays.Uzbekistan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

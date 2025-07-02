module TestUnitedArabEmirates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedArabEmirates" begin
    calendar = Holidays.UnitedArabEmirates()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

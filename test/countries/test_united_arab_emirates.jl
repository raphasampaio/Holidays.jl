module TestUnitedArabEmirates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedArabEmirates" begin
    calendar = Holidays.UnitedArabEmirates()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestBelize

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Belize" begin
    calendar = Holidays.Belize()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

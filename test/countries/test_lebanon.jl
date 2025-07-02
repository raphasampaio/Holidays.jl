module TestLebanon

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Lebanon" begin
    calendar = Holidays.Lebanon()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

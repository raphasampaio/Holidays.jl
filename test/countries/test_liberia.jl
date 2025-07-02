module TestLiberia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Liberia" begin
    calendar = Holidays.Liberia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

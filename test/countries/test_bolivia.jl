module TestBolivia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bolivia" begin
    calendar = Holidays.Bolivia()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

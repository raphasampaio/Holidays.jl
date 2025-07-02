module TestKazakhstan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kazakhstan" begin
    calendar = Holidays.Kazakhstan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end

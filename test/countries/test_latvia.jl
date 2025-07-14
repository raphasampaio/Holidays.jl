module TestLatvia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Latvia" begin
    calendar = Holidays.Latvia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

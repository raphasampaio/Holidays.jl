module TestKenya

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kenya" begin
    calendar = Holidays.Kenya()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

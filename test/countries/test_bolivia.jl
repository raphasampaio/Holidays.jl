module TestBolivia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bolivia" begin
    calendar = Holidays.Bolivia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestIndia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "India" begin
    calendar = Holidays.India()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

module TestKosovo

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kosovo" begin
    calendar = Holidays.Kosovo()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end

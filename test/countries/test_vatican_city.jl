module TestVaticanCity

using Dates
using Holidays
using Test

include("../util.jl")

@testset "VaticanCity" begin
    calendar = Holidays.VaticanCity()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
